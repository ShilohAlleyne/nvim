{
    plugins.lsp = {
        enable     = true;
        inlayHints = true;
        servers = {
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
            marksman.enable       = true;
            tinymist.enable       = true;
            fsautocomplete.enable = true;
            gleam.enable          = true;
            clangd.enable         = true;
        };
    };

    extraConfigLua = ''
        vim.api.nvim_create_autocmd("FileType", {
          pattern = { "markdown", "typst" },
          callback = function()
            vim.opt_local.wrap = true       -- enable line wrapping
            vim.opt_local.spell = true      -- enable spell checking
          end,
        })

        require('lspconfig').hls.setup {
          cmd = { "haskell-language-server-wrapper", "--lsp" },
        }
    '';

}
