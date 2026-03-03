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

            -- Add header comment to buffer
            local function header(text)
              local ft = vim.bo.filetype

              -- map filetypes to comment leaders
              local comment = ({
                rust    = "//",
                nix     = "//",
                haskell = "--",
                python  = "#",
              })[ft] or "//"   -- fallback

              local line = comment .. " " .. "──────────────────────────────────────────────────────────────"
              local mid  = comment .. " " .. text

              return table.concat({ line, mid, line }, "\n")
            end
        '';
    };
}
