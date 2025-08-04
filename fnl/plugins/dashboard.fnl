(local ascii (require "dashboardAscii"))

(let [spec {}]                            ;; Create an empty table
  (table.insert spec "folke/snacks.nvim") ;; Positional plugin name (index 1)
  (set spec.opts
       {:dashboard
         {:preset
           {:header ascii
            :sections
              [{:section "header"}
               {:section "keys" :gap 1 :padding 1}
               {:section "startup"}]}}})
  spec)

