;; "alexxGmZ/e-ink.nvim",
;; priority = 1000,
;; config = function()
;;     require("e-ink").setup()
;;     vim.cmd.colorscheme("e-ink")
;;
;;     -- choose light mode or dark mode
;;     -- vim.opt.background = "dark"
;;     -- vim.opt.background = "light"
;;     --
;;     -- or do
;;     -- :set background=dark
;;     -- :set background=light
;; end,

; Techbase colourscheme
(let [spec {}]
  ;; Plugin name
  (table.insert spec "mcauley-penney/techbase.nvim")
  (set spec.config
    (fn []
      (vim.cmd.colorscheme "techbase")))
  (set spec.priority 1000)
  spec)


; ;; Minimal Colour Scheme
; (let [spec {}]
;   (table.insert spec "kyza0d/xeno.nvim")
;   (set spec.lazy false)
;   (set spec.priority 1000)
;   (set spec.config
;        (fn []
;          (let [xeno (require :xeno)]
;            (xeno.new_theme 
;              "Overdrive-III" 
;              {:base   "#2b2b2b"
;               :accent "#68429C"})
;            (vim.cmd.colorscheme "Overdrive-III"))))
;
;   spec)
