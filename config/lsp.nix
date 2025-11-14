{
    plugins.lsp = {
        enable            = true;
        # inlayHints.enable = true;
        servers = {
            # rust_analyzer = {
            #     enable       = true;
            #     installCargo = true;
            #     installRustc = true;
            # };
            hls = {
                enable     = true;
                installGhc = true;
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
