{
    plugins = {
        # Visuals
        which-key = {
            enable          = true;
            settings.preset = "helix";
        };
        web-devicons.enable    = true;
        mini-icons.enable      = true;
        mini-statusline.enable = true;
        mini-trailspace.enable = true;
        mini-starter.enable    = true;
        mini-diff.enable       = true;
        mini-tabline.enable    = true;
        mini-notify.enable     = true;
        mini-indentscope       = {
            enable          = true;
            settings.symbol = "│";
        };

        # Programming
        treesitter.enable      = true;
        rustaceanvim = {
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
        lazygit.enable         = true;
        trouble.enable         = true;
        undotree.enable        = true;
        mini-basics.enable     = true;
        mini-pairs.enable      = true;
        mini-surround.enable   = true;
        mini-align.enable      = true;
        mini-comment.enable    = true;
        mini-completion.enable = true;

        # File nav
        mini-pick.enable       = true;
        yazi.enable            = true;
        oil.enable             = true;
    };
}
