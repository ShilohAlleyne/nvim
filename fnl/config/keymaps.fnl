(global vim _G.vim)

(local g vim.g)
(local o vim.o)
(local opt vim.opt)
(local A vim.api)

;; Remaps
(set g.mapleader " ")

;; Define map function
(fn map [mode key cmd]
  (vim.keymap.set mode key cmd {:silent true :noremap true}))

;; -------- Normal Mode --------
(map "n" "<C-Right>" "<c-w>l") ;; Right
(map "n" "<C-Left>" "<c-w>h")  ;; Left
(map "n" "<C-Up>" "<c-w>k")    ;; Up
(map "n" "<C-Down>" "<c-w>j")  ;; Down

;; -------- Insert Mode --------
(map "i" "<C-z>" "<C-o>u")           ;; Undo
(map "i" "<C-r>" "<C-o><C-r>")       ;; Redo

;; -------- Visual Mode --------
(map "v" "<C-c>" "+y")               ;; Copy
(map "v" "<C-v>" "+p")               ;; Paste
(map "v" "<S-Tab>" "<gv")            ;; Un-indent
(map "v" "<Tab>" ">gv")              ;; Indent

;; -------- Which-Key Config --------
(fn entry [key cmd desc icon]
  (let [entry {}]
    (table.insert entry key)
    (table.insert entry cmd)
    (set entry.desc desc)
    (set entry.icon icon)
    entry))

(local wk (require "which-key"))
(wk.add
  [
    (entry "<leader>U" 
      (fn [] (vim.cmd "UndotreeToggle"))
      "Toggle UndoTree" 
      ((. (require "mini.icons") "get") "lsp" "class"))

  ])

