; GUIから起動されたEmacsのpathが正しくわたらないための設定
; 下に記述したものがPATHの先頭に追加される
(dolist (dir (list
              "/sbin"
              "/usr/sbin"
              "/bin"
              "/usr/bin"
              "/usr/local/bin"
              "/opt/local/bin"
              (expand-file-name "~/bin")
              (expand-file-name "~/.emacs.d/bin")
              ))
; PATH と exec-path に同じ物を追加
(when (and (file-exists-p dir) (not (member dir exec-path)))
  (setenv "PATH" (concat dir ":" (getenv "PATH")))
  (setq exec-path (append (list dir) exec-path))))


; Emacs.appの場合
(when (eq system-type 'darwin)
  ;;; Command keyをMetaに
  (setq ns-command-modifier 'meta))

; GUI版Emacsの場合
(if window-system (progn
  (custom-set-faces
    '(default ((t (:background "black" :foreground "white"))))
    '(cursor (
           (((class color) (background dark )) (:background "green"))
           (((class color) (background light)) (:background "green"))
           (t ())
           )))
  (set-foreground-color "white")
  (set-background-color "black")
  (set-cursor-color "green")
  ;; 起動時のディスプレイサイズ変更(環境に応じて適宜変更)
  (set-frame-height (next-frame) 31)
  (set-frame-width (next-frame) 80)
  ;; メニューバーを隠す
  (tool-bar-mode -1)
  ;; デフォルトの透明度を設定する (85%)
  (add-to-list 'default-frame-alist '(alpha . 85))
  ;; カレントウィンドウの透明度を変更する (85%)
  (set-frame-parameter nil 'alpha 85)
  ;;; 画像ファイルを表示する
  (auto-image-file-mode t)
  ;; Font
  (create-fontset-from-ascii-font "Menlo-12:weight=normal:slant=normal" nil "menlomarugo")
  (set-fontset-font "fontset-menlomarugo"
                    'unicode
                    (font-spec :family "Hiragino Maru Gothic ProN" :size 14)
                    nil
                    'append)
  (add-to-list 'default-frame-alist '(font . "fontset-menlomarugo"))
  ;; (set-face-attribute 'default nil :family "monaco" :height 150)
  ;; (set-fontset-font
  ;;   (frame-parameter nil 'font)
  ;;     'japanese-jisx0208
  ;;     '("Hiragino Kaku Gothic ProN" . "iso10646-1"))
  ;; (set-fontset-font
  ;;   (frame-parameter nil 'font)
  ;;     'japanese-jisx0212
  ;;     '("Hiragino Kaku Gothic ProN" . "iso10646-1"))
  ;; (set-fontset-font
  ;;   (frame-parameter nil 'font)
  ;;     'mule-unicode-0100-24ff
  ;;     '("monaco" . "iso10646-1"))
  ;; (setq face-font-rescale-alist
  ;;     '(("^-apple-hiragino.*" . 1.2)
  ;;       (".*osaka-bold.*" . 1.2)
  ;;       (".*osaka-medium.*" . 1.2)
  ;;       (".*courier-bold-.*-mac-roman" . 1.0)
  ;;       (".*monaco cy-bold-.*-mac-cyrillic" . 0.9) (".*monaco-bold-.*-mac-roman" . 0.9)
  ;;       ("-cdac$" . 1.3)))
  ) (menu-bar-mode -1)
)
