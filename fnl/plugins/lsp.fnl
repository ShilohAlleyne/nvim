(let [spec {}]
  ;; Config name
  (table.insert spec "neovim/nvim-lspconfig")
  ;; Opts
  (set spec.opts
    {:servers
      {:lua_ls
        {:settings
          {:Lua
          {:format
            {:enable true
            :defaultConfig
            {:indent_style "space"
              :indent_size "4"}}}}}

      :gleam
        {:settings
          {:Gleam
          {:format
            {:enable true
            :defaultConfig
            {:indent_style "space"
              :indent_size "4"}}}}}

      :rust_analyzer
        {:filetypes ["rust"]
         :settings
           {"rust-analyzer"
             {:imports
               {:granularity {:group "module"}
                :prefix "self"}
                :cargo {:buildScripts {:enable true}}
                :procMacro {:enable true}}}}

      :fennel_language_server
        {:filetypes ["fennel"]
          :cmd ["fennel-ls"]
          :root_dir (vim.fs.dirname 
            (table.remove 
              (vim.fs.find 
                ".git"
                {:path (vim.api.nvim_buf_get_name 0)
                :upward true}) 1))
          :settings
          {:fennel
          {:diagnostics {:globals ["vim"]}
            :workspace
            {:library (vim.api.nvim_list_runtime_paths)
            :checkThirdParty false}}}}}}))
