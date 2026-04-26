{
    plugins = {
        # Visuals
        which-key = {
            enable          = true;
            settings.preset = "helix";
        };
        markview.enable         = true;
        web-devicons.enable     = true;
        markdown-preview.enable = true;
        typst-preview.enable    = true;

        # Programming
        treesitter.enable = true;
        luasnip.enable    = true;
        lazygit.enable    = true;
        trouble.enable    = true;
        undotree.enable   = true;
        lean.enable       = true;

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

        blink-cmp = {
            enable          = true;
            settings = {
                keymap = {
                    "<C-l>"     = ["snippet_forward"           "fallback"];
                    "<C-h>"     = ["snippet_backward"          "fallback"];
                    "<Up>"      = ["select_prev"               "fallback"];
                    "<Down>"    = ["select_next"               "fallback"];
                    "<S-Tab>"   = ["select_prev"               "fallback"];
                    "<Tab>"     = ["select_next"               "fallback"];
                    "<C-k>"     = ["scroll_documentation_up"   "fallback"];
                    "<C-j>"     = ["scroll_documentation_down" "fallback"];
                    "<C-space>" = ["show"                      "show_documentation" "hide_documentation"];
                    "<CR>"      = ["accept"                    "fallback"];
                    "<Esc>"     = ["hide"                      "fallback"];
                };
            };
        };

        # File nav
        yazi.enable = true;
        oil.enable  = true;

        # Mini
        mini = {
            enable = true;
            modules = {
                align       = {};
                basics      = {};
                bufremove   = {};
                comment     = {};
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
            };
        };
    };
}
