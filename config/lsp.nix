{
    plugins.lsp = {
        enable     = true;
        inlayHints = true;
        servers = {
            hls = {
                enable     = true;
                installGhc = false;
            };
            pyright = {
                enable   = true;
                settings = {
                    python = {
                        analysis = {
                            typeCheckingMode       = "basic";
                            autoSearchPaths        = true;
                            useLibraryCodeForTypes = true;
                            diagnosticMode         = "workspace";
                        };
                    };
                };
            };
            nil_ls = {
                enable   = true;
                settings = {
                    formatting.command = [ "nixpkgs-fmt" ];
                };
            };
        };
    };
}
