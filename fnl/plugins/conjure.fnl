(let [spec {}]
  ;; Plugin name
  (table.insert spec "Olical/conjure")

  ;; Init function
  (set spec.init
    (fn []
      ;; Assign filetypes table
      (tset vim.g "conjure#filetypes"
        ["clojure" "fennel" "racket" "scheme" "lua" "lisp" "python"])

      ;; Disable rust
      (tset vim.g "conjure#filetype#rust" false)))

  spec)
