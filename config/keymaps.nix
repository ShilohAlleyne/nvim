{
    globals.mapleader = " ";
    keymaps = [
		# Normal Mode
		{
			key          = "<C-Right>";
			action       = "<c-w>l";
			mode         = "n";
			options.desc = "Move focus right";
		}
		{
			key          = "<C-Left>";
			action       = "<c-w>h";
			mode         = "n";
			options.desc = "Move focus left";
		}
		{
			key          = "<C-Up>";
			action       = "<c-w>k";
			mode         = "n";
			options.desc = "Move focus up";
		}
		{
			key          = "<C-Down>";
			action       = "<c-w>j";
			mode         = "n";
			options.desc = "Move focus down";
		}
        {
            key          = "<Leader>w-";
            action       = ":split<CR>";
            mode         = "n";
            options.desc = "Split window horizontally";
        }
        {
            key          = "<Leader>w|";
            action       = ":vsplit<CR>";
            mode         = "n";
            options.desc = "Split window vertically";
        }
		# Activate plugins
		{
            key          = "<Leader>ff";
            action       = ":Pick files<CR>";
            mode         = "n";
            options.desc = "Pick files";
        }
        {
            key          = "<Leader>fb";
            action       = ":Pick buffers<CR>";
            mode         = "n";
            options.desc = "Pick buffers";
        }
        {
            key          = "<Leader>-";
            action       = ":Yazi<CR>";
            mode         = "n";
            options.desc = "Open Yazi";
        }
        {
            key          = "<Leader>=";
            action       = ":Oil<CR>";
            mode         = "n";
            options.desc = "Open Oil";
        }
        {
            key          = "<Leader>n";
            action       = ":lua MiniNotify.show_history()<CR>";
            mode         = "n";
            options.desc = "Show notification history";
        }
        {
            key          = "<Leader>x";
            action       = ":Trouble diagnostics toggle<CR>";
            mode         = "n";
            options.desc = "Diagnostics (Trouble)";
        }
        {
            key          = "<Leader>g";
            action       = ":LazyGit<CR>";
            mode         = "n";
            options.desc = "Open Lazygit";
        }
        {
            key          = "<Leader>u";
            action       = ":UndotreeToggle<CR>";
            mode         = "n";
            options.desc = "Open Undotree";
        }
		# Insert Mode
		{
			key          = "<C-z>";
			action       = "<C-o>u";
			mode         = "i";
			options.desc = "Undo";
		}
		{
			key          = "<C-r>";
			action       = "<C-o><C-r>";
			mode         = "i";
			options.desc = "Redo";
		}
		# Visual Mode
		{
			key          = "<C-c>";
			action       = "+y";
			mode         = "v";
			options.desc = "Copy";
		}
		{
			key          = "<C-v>";
			action       = "+p";
			mode         = "v";
			options.desc = "Paste";
		}
		{
			key          = "<S-Tab>";
			action       = "<gv";
			mode         = "v";
			options.desc = "Un-ident line";
		}
		{
			key          = "<Tab>";
			action       = ">gv";
			mode         = "v";
			options.desc = "Ident line";
		}
    ];
}
