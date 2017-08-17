;; ----------------------------------------
;; jedi
;; ----------------------------------------
(add-hook 'python-mode-hook 'jedi:setup)
;;(define-key jedi-mode-map (kbd "<C-tab>") nil) ;;C-tabはウィンドウの移動に用いる
(setq jedi:complete-on-dot t)
(setq ac-sources
      (delete 'ac-source-words-in-same-mode-buffers ac-sources)) ;;jediの補完候補だけでいい
(add-to-list 'ac-sources 'ac-source-filename)
(add-to-list 'ac-sources 'ac-source-jedi-direct)
;;(define-key python-mode-map "\C-ct" 'jedi:goto-definition)
;;(define-key python-mode-map "\C-cb" 'jedi:goto-definition-pop-marker)
;;(define-key python-mode-map "\C-cr" 'helm-jedi-related-names)
;; ----------------------------------------
;; autopep8
;; ----------------------------------------
;;(require 'py-autopep8)
;;(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)
;;(add-hook 'before-save-hook 'py-autopep8-before-save)
;;(setq py-autopep8-options '("--max-line-length=200"))
;;(setq flycheck-flake8-maximum-line-length 200)
;; ----------------------------------------
;; yapf
;; ----------------------------------------
(add-hook 'python-mode-hook 'py-yapf-enable-on-save)
