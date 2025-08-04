(let [spec {}]

  ;; Plugin name
  (table.insert spec "stevearc/conform.nvim")

  ;; Options
  (set spec.opts {:formatters_by_ft {}})

  ;; Add basic formatters
  (tset spec.opts.formatters_by_ft :lua ["stylua"])
  (tset spec.opts.formatters_by_ft :python ["isort" "black"])

  ;; Rust formatters
  (let [rs {}]
    (table.insert rs "rustfmt")
    (set rs.lsp_format "fallback")
    (tset spec.opts.formatters_by_ft :rust rs))

  ;; JavaScript formatters
  (let [js {}]
    (table.insert js "prettierd")
    (table.insert js "prettier")
    (set js.stop_after_first true)
    (tset spec.opts.formatters_by_ft :javascript js))

  spec)
