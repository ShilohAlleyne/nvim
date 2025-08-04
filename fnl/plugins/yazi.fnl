(let [spec {}]

  ;; Plugin name (positional string)
  (table.insert spec "mikavilpas/yazi.nvim")

  ;; Dependencies: list of tables with positional + named fields
  (set spec.dependencies
    [(let [dep {}]
       (table.insert dep "nvim-lua/plenary.nvim") ;; positional
       (tset dep :lazy true)                      ;; named
       dep)])

  ;; Keys: each entry is a table with either 2 or 3 fields
  (set spec.keys
    [(let [k {}]
       (table.insert k "<leader>-")               ;; lhs
       (tset k :mode ["n" "v"])                   ;; mode (optional)
       (table.insert k "<cmd>Yazi<cr>")           ;; rhs
       (tset k :desc "Open yazi at the current file")
       k)
     (let [k {}]
       (table.insert k "<leader>cw")
       (table.insert k "<cmd>Yazi cwd<cr>")
       (tset k :desc "Open the file manager in nvim's working directory")
       k)
     (let [k {}]
       (table.insert k "<c-up>")
       (table.insert k "<cmd>Yazi toggle<cr>")
       (tset k :desc "Resume the last yazi session")
       k)])

  spec)
