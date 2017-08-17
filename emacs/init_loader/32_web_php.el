;;; web-mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.erb\\'"   . web-mode))
(add-to-list 'auto-mode-alist '("\\.vue\\'"   . web-mode))
;; indent
(defun web-mode-hook ()
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  )
(add-hook 'web-mode-hook  'web-mode-hook)
;; color
(custom-set-faces
 '(web-mode-doctype-face
   ((t (:foreground "#82AE46"))))
 '(web-mode-html-tag-face
   ((t (:foreground "#E6B422" :weight bold))))
 '(web-mode-html-tag-bracket-face
   ((t (:foreground "#ADD8E6")))) ;;; LightBlue e.g. <>
 '(web-mode-html-attr-name-face
   ((t (:foreground "#C97586"))))
 '(web-mode-html-attr-value-face
   ((t (:foreground "#82AE46"))))
 '(web-mode-html-attr-equal-face
   ((t (:foreground "#87CEEB")))) ;;; SkyBlue e.g. =
 '(web-mode-comment-face
   ((t (:foreground "#D9333F"))))
 '(web-mode-server-comment-face
   ((t (:foreground "#D9333F"))))
 '(web-mode-css-rule-face
   ((t (:foreground "#A0D8EF"))))
 '(web-mode-css-pseudo-class-face
   ((t (:foreground "#FF7F00"))))
 '(web-mode-css-at-rule-face
   ((t (:foreground "#FF7F00"))))
 ;;; code (comp)
 '(web-mode-builtin-face
   ((t (:foreground "#000000"))))
 '(web-mode-comment-face
   ((t (:foreground "#000000"))))
 '(web-mode-constant-face
   ((t (:foreground "#000000"))))
 '(web-mode-filter-face
   ((t (:foreground "#000000"))))
 '(web-mode-function-call-face
   ((t (:foreground "#000000"))))
 '(web-mode-function-name-face
   ((t (:foreground "#000000"))))
 '(web-mode-keyword-face
   ((t (:foreground "#FF1493")))) ;;; DeepPink1 e.g. do end
 '(web-mode-preprocessor-face
   ((t (:foreground "#000000"))))
 '(web-mode-string-face
   ((t (:foreground "#000000"))))
 '(web-mode-symbol-face
   ((t (:foreground "#00FF00")))) ;;; green1 Ruby symbol
 '(web-mode-type-face
   ((t (:foreground "#000000"))))
 '(web-mode-variable-name-face
   ((t (:foreground "#000000"))))
 ;;; block (comp)
 '(web-mode-block-control-face
   ((t (:foreground "#000000"))))
 '(web-mode-block-delimiter-face 
   ((t (:foreground "#FF3030")))) ;;; firebrick1 e.g. <% %>
 '(web-mode-block-face
   ((t (:foreground "#000000"))))
 '(web-mode-block-string-face
   ((t (:foreground "#000000"))))
 '(web-mode-block-comment-face
   ((t (:foreground "#000000")))) 
 ;;; part (comp)
 '(web-mode-part-face
   ((t (:foreground "#000000"))))
 '(web-mode-script-face
   ((t (:foreground "#000000"))))
 '(web-mode-style-face
   ((t (:foreground "#000000"))))
 '(web-mode-part-string-face
   ((t (:foreground "#000000"))))
 '(web-mode-part-comment-face
   ((t (:foreground "#000000"))))
 '(web-mode-javascript-string-face
   ((t (:foreground "#000000"))))
 )

;;; php-mode
;;;(require 'php-mode)
;;; indent
;;;(add-hook 'php-mode-hook
;;;          (lambda ()
;;;            (setq tab-width 4)
;;;            (setq c-basic-offset 4)))
