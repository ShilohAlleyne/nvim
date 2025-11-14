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
		'';
    };
}
