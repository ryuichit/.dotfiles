;; ----------------------------------------
;; ruby-mode
;; ----------------------------------------
(autoload 'ruby-mode "ruby-mode"
  "Mode for editing ruby source files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Podfile$" . ruby-mode))
;; ----------------------------------------
;; ruby-block
;; endにカーソルを合わせるとendに対応する行をハイライトする
;; ----------------------------------------
(require 'ruby-block)
(ruby-block-mode t)
(setq ruby-block-highlight-toggle t)
;; ----------------------------------------
;; ruby-end
;; endや括弧を自動挿入する
;; ----------------------------------------
(require 'ruby-end)
(add-hook 'ruby-mode-hook
          '(lambda ()
             (abbrev-mode 1)
             (electric-pair-mode t)
             (electric-indent-mode t)
             (electric-layout-mode t)))
;; ----------------------------------------
;; rcodetools
;; ----------------------------------------
(add-to-list 'load-path "~/.rbenv/versions/2.3.1/lib/ruby/gems/2.3.0/gems/rcodetools-0.8.5.0/")
(require 'rcodetools)
(setq rct-find-tag-if-available nil)
(defun make-ruby-scratch-buffer ()
  (with-current-buffer (get-buffer-create "*ruby scratch*")
    (ruby-mode)
    (current-buffer)))
(defun ruby-scratch ()
  (interactive)
  (pop-to-buffer (make-ruby-scratch-buffer)))
(defun ruby-mode-hook-rcodetools ()
  (define-key ruby-mode-map "\M-\C-i" 'rct-complete-symbol)
  (define-key ruby-mode-map "\C-c\C-c" 'ruby-toggle-buffer)
  (define-key ruby-mode-map "\C-c\C-d" 'xmp)
  (define-key ruby-mode-map "\C-c\C-f" 'rct-ri))
(add-hook 'ruby-mode-hook 'ruby-mode-hook-rcodetools)
;; ----------------------------------------
;; robe
;; ----------------------------------------
;;(add-hook 'ruby-mode-hook 'robe-mode)
;;(autoload 'robe-mode "robe" "Code navigation, documentation lookup and completion for Ruby" t nil)
;;(autoload 'ac-robe-setup "ac-robe" "auto-complete robe" nil nil)
;;(add-hook 'robe-mode-hook 'ac-robe-setup)

;;(add-hook 'ruby-mode-hook
;;          '(lambda ()
;;             (robe-mode)
;;             (robe-ac-setup)
;;             (inf-ruby-keys)
;;             ))
;; ----------------------------------------
;; projectile-rails
;; ----------------------------------------
;;(projectile-rails-global-mode)
