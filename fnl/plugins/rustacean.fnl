(let [spec {}]
  (table.insert spec "mrcjkb/rustaceanvim")
  (set spec.verison "^5")
  (set spec.lazy true)
  (set spec.cond
    (fn []
      (vim.fn.filereadable "Cargo.toml")))

  spec)
