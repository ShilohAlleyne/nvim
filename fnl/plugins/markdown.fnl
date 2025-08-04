(let [spec {}]
  (table.insert spec "MeanderingProgrammer/render-markdown.nvim")
  (set spec.dependencies 
    (let [dep {}]
      (table.insert dep "nvim-treesitter/nvim-treesitter")
      (table.insert dep "echasnovski/mini.icons")
      dep))
  (set spec.opts {})
  spec)
