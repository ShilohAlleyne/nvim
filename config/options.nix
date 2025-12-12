{
    config = {
        opts = {
            number         = true;
            relativenumber = true;
            clipboard      = "unnamedplus";
            cursorline     = true;
            updatetime     = 100;
            swapfile       = false;
            undofile       = true;
            incsearch      = true;
            inccommand     = "split";
            ignorecase     = true;
            smartcase      = true;
            signcolumn     = "yes";
		    autoindent     = true;
      	    autowrite      = true;
            confirm        = true;
            smartindent    = true;
            tabstop        = 4;
			shiftwidth     = 4;
			softtabstop    = 4;
			expandtab      = true;
        };

		extraConfigLua = ''
            -- Clipboard settings
			vim.g.clipboard = {
				name = "wsl-clip",
				copy = {
					["+"] = "clip.exe",
					["*"] = "clip.exe",
				},
				paste = {
					["+"] = "powershell.exe Get-Clipboard",
					["*"] = "powershell.exe Get-Clipboard",
				},
				cache_enabled = 0,
			}

            -- Linking building to notifications
            -- 1. Setup mini.notify
            require('mini.notify').setup()

            -- 2. Define the build logic
            local function run_build_with_notify(cmd_args)
                local lines = {}
                vim.notify("Build started: " .. table.concat(cmd_args, " "), vim.log.levels.INFO)

                vim.fn.jobstart(cmd_args, {
                    stdout_buffered = true,
                    stderr_buffered = true,
                    on_stdout = function(_, data)
                        if data then
                            for _, line in ipairs(data) do
                                if line ~= "" then table.insert(lines, line) end
                            end
                        end
                    end,
                    on_stderr = function(_, data)
                        if data then
                            for _, line in ipairs(data) do
                                if line ~= "" then table.insert(lines, line) end
                            end
                        end
                    end,
                    on_exit = function(_, code)
                        local warnings = {}
                        local summary = ""
                        local current_warning = {}

                        -- Parse the lines
                        for _, line in ipairs(lines) do
                            -- Detect the start of a Rust warning block
                            if line:match("^warning:") then
                                if #current_warning > 0 then
                                    table.insert(warnings, table.concat(current_warning, "\n"))
                                end
                                current_warning = { line }
                            -- Detect the summary line
                            elseif line:match("Finished") or line:match("generated %d+ warning") then
                                summary = summary .. line .. "\n"
                            -- If we are currently inside a warning block, keep adding lines to it
                            elseif #current_warning > 0 and line:match("^%s") then
                                table.insert(current_warning, line)
                            end
                        end
                        
                        -- Catch the last warning if it exists
                        if #current_warning > 0 then
                            table.insert(warnings, table.concat(current_warning, "\n"))
                        end

                        vim.schedule(function()
                            -- 1. Notify Warnings (Level: WARN)
                            for _, warn_msg in ipairs(warnings) do
                                vim.notify(warn_msg, vim.log.levels.WARN)
                            end

                            -- 2. Notify Result Summary (Level: INFO if success, ERROR if fail)
                            local status_level = (code == 0) and vim.log.levels.INFO or vim.log.levels.ERROR
                            local title = (code == 0) and "󰄬 Build Success\n" or "󰅚 Build Failed\n"
                            vim.notify(title .. (summary ~= "" and summary or "Done."), status_level)
                        end)
                    end,
                })
            end

            vim.api.nvim_create_user_command('Build', function(opts)
                run_build_with_notify(opts.fargs)
            end, { nargs = '+' })
        '';
    };
}
