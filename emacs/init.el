;; Emacs25からインストールパッケージがpackage-selected-package変数に保持されるよ
;; うになり、その値がデフォルトではinit.elに自動書き込みされるので、書き込みファ
;; イルをcustom.elに指定変更する。
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

;; ----------------------------------------
;; package.el
;; ----------------------------------------
(require 'package)
;; MELPAを追加
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
;; MELPA-stableを追加
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))
;; 初期化
(package-initialize)

;; ----------------------------------------

;; loopとかを使う
(require 'cl)

;; ----------------------------------------
;; 未インストールの使用パッケージをインストールする
;; ----------------------------------------
(defvar installing-package-list
  '(
    ;; 以降で使用するパッケージを記載する
    init-loader
    company
    php-mode
    typescript-mode
    tide
    rust-mode
    go-mode
    company-go
    ))
(let ((not-installed (loop for x in installing-package-list
			   when (not (package-installed-p x))
			   collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
      (package-install pkg))))

;; ----------------------------------------
;; init-loader
;; ----------------------------------------
(require 'init-loader)
;; 起動時にログバッファを表示しない
;; * init-loader-loadよりも前に指定すること。
(setq init-loader-show-log-after-init nil)
;; 設定ファイルのディレクトリを指定する
(init-loader-load "~/.emacs.d/init_loader")
;; エラー時のみログバッファを表示する
(if (not (equal (init-loader-error-log) ""))
    (init-loader-show-log))
