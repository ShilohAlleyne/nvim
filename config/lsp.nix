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
        -- Only prepend ~/.elan/bin to PATH when inside a Lean project
        vim.api.nvim_create_autocmd("BufEnter", {
          callback = function()
            local cwd = vim.fn.getcwd()
            local lakefile_toml = cwd .. "/lakefile.toml"
            local lakefile_lean = cwd .. "/lakefile.lean"

            if vim.fn.filereadable(lakefile_toml) == 1 or vim.fn.filereadable(lakefile_lean) == 1 then
              vim.env.PATH = vim.fn.expand("~/.elan/bin") .. ":" .. vim.env.PATH
            end
          end,
        })

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
