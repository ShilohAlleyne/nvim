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
            vim.api.nvim_create_autocmd("BufWritePre", {
                pattern = "*",
                callback = function()
                    -- Save the current cursor position
                    local save_cursor = vim.fn.getpos(".")
                    -- Execute the regex
                    vim.cmd([[%s/\s\+$//e]])
                    -- Restore the cursor position so it doesn't jump to the end
                    vim.fn.setpos(".", save_cursor)
                end,
            })
          '';
    };
}
