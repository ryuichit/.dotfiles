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
;; 設定ファイルのディレクトリを指定する
(init-loader-load "~/.emacs.d/init_loader")
