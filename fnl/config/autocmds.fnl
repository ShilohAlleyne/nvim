(global vim _G.vim)

;; Disable autoformat for certain files
(local api vim.api)

(api.nvim_create_autocmd
  ["Filetype"]
  {:pattern ["rust" "haskell" "gleam"]
   :callback (fn [] (set vim.b.autoformat false))})

;; Disable colour change on focus
(local sync-normalnc
  (fn []
    (let [hl (api.nvim_get_hl 0 {:name "Normal"})
          bg (or hl.bg "none")]
      (api.nvim_set_hl 0 "NormalNC" {:bg bg}))))

(api.nvim_create_autocmd
  ["ColorScheme" "UIEnter" "WinEnter" "WinLeave" "BufWinEnter"]
  {:callback (fn [] (vim.schedule sync-normalnc))})

;; Add Glyph for split window
(api.nvim_set_hl 0 "GutterGlyph" {:fg "#8A8DA7"})

(api.nvim_create_autocmd
  ["WinEnter" "BufWinEnter" "VimResized" "ModeChanged" "WinResized"]
  {:callback
   (fn []
     (let [[winrow _] (api.nvim_win_get_position 0)
           glyph (vim.fn.nr2char 9473 true)
           styled (.. "%#GutterGlyph#" (string.rep glyph vim.o.columns))]
       (if (= winrow 0)
           (set vim.opt_local.statusline styled)
           (set vim.opt_local.statusline ""))))})
