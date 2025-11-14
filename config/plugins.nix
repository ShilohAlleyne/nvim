{
    plugins = {
        # Visuals
        which-key = {
            enable          = true;
            settings.preset = "helix";
        };
        web-devicons.enable = true;

        # Programming
        treesitter.enable = true;
        rustaceanvim      = {
            enable = true;
            settings = {
                tools.enable_clippy = true;
                server = {
                    default_settings = {
                        inlayHints.lifetimeElisionHints.enable = "always";
                        rust-analyzer = {
                            cargo = { allFeatures = true; };
                            check = { command     = "clippy"; };
                            files = { excludeDirs = ["target" ".git" ".cargo" ".github" ".direnv"]; };
                        };
                    };
                };
            };
        };
        markdown-preview.enable = true;
        typst-preview.enable    = true;
        lazygit.enable          = true;
        trouble.enable          = true;
        undotree.enable         = true;

        # File nav
        yazi.enable = true;
        oil.enable  = true;

        # Mini
        mini = {
            enable = true;
            modules = {
                align       = {};
                basics      = {};
                comment     = {};
                completion  = {};
                diff        = {};
                icons       = {};
                indentscope = {
                    symbol = "│";
                };
                notify      = {};
                pairs       = {};
                pick        = {};
                starter     = {};
                statusline  = {};
                surround    = {};
                tabline     = {};
                trailspace  = {};
            };
        };
    };
}
