(let [spec {}]
  (table.insert spec "saghen/blink.cmp")
  (set spec.enabled true)
  (set spec.opts {})
  ;; Snippets
  (let [luasnip (require :luasnip)]
    (set spec.opts.snippets
      {:expand (fn [s] (luasnip.lsp_expand s))
       :active (fn [f]
                 (if (and f (. f direction))
                     (luasnip.jumpable (. f direction))
                     (luasnip.in_snippet)))
       :jump (fn [d] (luasnip.jump d))}))
  ;; Keymap
  (set spec.opts.keymap
    {:preset "default"
     :<C-l> ["snippet_forward" "fallback"]
     :<C-h> ["snippet_backward" "fallback"]
     :<Up> ["select_prev" "fallback"]
     :<Down> ["select_next" "fallback"]
     :<S-Tab> ["select_prev" "fallback"]
     :<Tab> ["select_next" "fallback"]
     :<C-k> ["scroll_documentation_up" "fallback"]
     :<C-j> ["scroll_documentation_down" "fallback"]
     :<C-space> ["show" "show_documentation" "hide_documentation"]
     :<CR> ["accept" "fallback"]
     :<Esc> ["hide" "fallback"]})
  spec)
