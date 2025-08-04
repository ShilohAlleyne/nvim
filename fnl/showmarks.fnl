(global vim _G.vim)

;; Shows the current marks in a file
;; in the gutter
(local ns (vim.api.nvim_create_namespace "fennel-marks"))

(fn get-marks [show?]
  (let [marks (vim.fn.getmarklist "%")
        buf (vim.api.nvim_get_current_buf)]
    (if show?
        (each [_ {:mark mark :pos [_ line_num _ _]} (ipairs marks)]
          (vim.api.nvim_buf_set_extmark buf ns (- line_num 1) 0
            {:sign_text mark
             :sign_hl_group "DiagnosticHint"
             :priority 100}))
        (vim.api.nvim_buf_clear_namespace buf ns 0 -1))))

(var visible? false)

(fn toggle-marks []
  (get-marks (not visible?))
  (set visible? (not visible?)))

{:get_marks get-marks
 :toggle_marks toggle-marks}

