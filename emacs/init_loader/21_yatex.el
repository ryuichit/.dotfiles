;;; YaTeX
(add-to-list 'load-path "~/.emacs.d/el-get/yatex")
(setq auto-mode-alist
      (cons (cons "\\.tex$" 'yatex-mode) auto-mode-alist))
(autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)
(add-hook 'yatex-mode-hook'(lambda ()(setq auto-fill-function nil)))
;; Preview.app の使用
(setq dvi2-command "open -a Preview")
