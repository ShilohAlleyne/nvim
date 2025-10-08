(let [spec {}]
  (table.insert spec "jbyuki/nabla.nvim")
  (set spec.dependancies
       (let [dep {}]
         (table.insert dep "nvim-neo-tree/neo-tree.nvim")
         (table.insert dep "williamboman/mason.nvim")))
  (set spec.lazy true)
  (set spec.config 
       (fn []
         (let [req (require :nvim-treesitter.configs)]
           (req.setup
             {:ensure_installed ["latex"]
              :auto_install true
              :sync_install false}))))

  (set spec.keys
       (fn []
         (let [ks {}]
           (set ks.desc "NablaPopUp")
           (table.insert ks "<leader>;")
           (table.insert ks ":lua require('nabla').popup()<cr>")
           
           ks)))

  spec)

