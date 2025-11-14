{
    globals.mapleader = " ";
    keymaps = [
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

    ];
}
