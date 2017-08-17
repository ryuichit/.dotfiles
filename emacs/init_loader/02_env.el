;; ----------------------------------------
;; environment setting
;; ----------------------------------------
(setq exec-path (append exec-path '("/opt/local/bin")))
(setq version-control nil)
(setq default-fill-column 80)
(setq visible-bell t)     ;;; no beep
(line-number-mode t)      ;;; display line number
(setq column-number-mode t) ;;; display column number
(setq scroll-step 1)
(blink-cursor-mode 0)     ;;; カーソルの点滅を止める
(show-paren-mode t)       ;;; 括弧の対応を表示
(setq show-paren-style 'mixed) ;;; ウィンドウ内に収まらないときだけ括弧内も光らせる
(setq transient-mark-mode t) ;;; hilight copy region ;;;
(setq-default indent-tabs-mode nil)   ;;; expand Tab to space ;;;
(setq kill-whole-line t)  ;;; C-k behavior
(setq next-line-add-newlines nil) ;;; C-n don't add new lines at EOF
(put 'narrow-to-region 'disabled nil) ;;; end of file ;;;
(setq backup-inhibited t) ;; バックアップファイルを作らない
(setq eval-expression-print-length nil) ;;; evalした結果を全部表示
(which-function-mode 1) ;;; ウィンドウの上部に現在の関数名を表示
(setq completion-ignore-case t) ;;; 補完時に大文字小文字を区別しない
(setq read-file-name-completion-ignore-case t)
;;; history ;;;
(savehist-mode 1) ;;; ミニバッファの履歴を保存する
(setq history-length 10000) ;;; 履歴数を大きくする
(recentf-mode)
(setq recentf-max-saved-items 10000) ;;; 最近開いたファイルを保存する数を増やす
;;; ファイルの先頭に#!...があるファイルを保存すると実行権をつける
(add-hook 'after-save-hook
          'executable-make-buffer-file-executable-if-script-p)
;;;;;;;;;C-x C-fのデフォルト表示の設定;;;;;;;;;;
(cd "~/")
;;; for Debug ~/.emacs ;;;
;(setq stack-trace-on-error t)
;(setq debug-on-error t)

(define-obsolete-variable-alias 'last-input-char
  'last-input-event "at least 19.34")
(define-obsolete-variable-alias 'last-command-char
  'last-command-event "at least 19.34")

; 言語を日本語にする
(set-language-environment 'Japanese)
; UTF-8とする
(prefer-coding-system 'utf-8)
; 起動時の画面はいらない
(setq inhibit-startup-message t)
; scratchの初期メッセージ消去
(setq initial-scratch-message "")

;;; ignore pasting image to Emacs when copying from MS Word
(setq yank-excluded-properties t)

;; ----------------------------------------
;; hl-line-mode
;; ----------------------------------------
(global-hl-line-mode t)
(defface my-hl-line-face
  '((((class color) (background dark))  ; カラーかつ, 背景が dark ならば,
     (:background "DarkSlateBlue" t))   ; 背景を黒に.
    (((class color) (background light)) ; カラーかつ, 背景が light ならば,
     (:background "ForestGreen" t))     ; 背景を ForestGreen に.
    (t (:bold t)))
  "hl-line's my face")
;; ハイライト
(setq hl-line-face 'my-hl-line-face)
;; 下線
(setq hl-line-face 'underline)
;; ----------------------------------------
;; electric-pair-mode
;; ----------------------------------------
(electric-pair-mode t)
