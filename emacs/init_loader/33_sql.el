;; ----------------------------------------
;; sql-mode
;; ----------------------------------------
(autoload 'sql-mode "sql" "SQL Edit mode" t)
(eval-after-load "sql"
  '(progn
     (load-library "sql-indent")
     (load-library "sql-complete")
     (load-library "sql-transform")
     )
  )
(setq sql-indent-offset 1)
