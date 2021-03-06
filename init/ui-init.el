(menu-bar-mode -1)
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

;; hide init message
(setq inhibit-startup-message t)

;; max size
(defun fullscreen ()
  (interactive)
  (set-frame-parameter nil 'fullscreen
		       (if (frame-parameter nil 'fullscreen) nil 'fullboth)))

(defun set-maximized ()
  (interactive)
  (x-send-client-message
   nil 0 nil "_NET_WM_STATE" 32
   '(1 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
  (interactive)
  (x-send-client-message
   nil 0 nil "_NET_WM_STATE" 32
   '(1 "_NET_WM_STATE_MAXIMIZED_VERT" 0)))
;;(set-maximized) 

;; auto revert
(global-auto-revert-mode t)

;;use multiple-cursors instead.
;;(require 'feng-highlight)
;;(global-set-key (kbd "M-i") 'feng-highlight-at-point)

;; from better-defaults, modifyed.
(ido-mode t)
(setq ido-enable-flex-matching t)

(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

(require 'saveplace)
(setq-default save-place t)

(global-set-key (kbd "M-/") 'hippie-expand)
(global-set-key (kbd "C-x C-b") 'ibuffer)

(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
;;(global-set-key (kbd "C-M-s") 'isearch-forward)
;;(global-set-key (kbd "C-M-r") 'isearch-backward)

(show-paren-mode 1)
(setq-default indent-tabs-mode nil)
(setq x-select-enable-clipboard t
      x-select-enable-primary t
      save-interprogram-paste-before-kill t
      apropos-do-all t
      mouse-yank-at-point t
      save-place-file (concat user-emacs-directory "places")
      backup-directory-alist `(("." . ,(concat user-emacs-directory
                                                 "backups"))))

;; turn on highlighting current line
(global-hl-line-mode 1)

(require 'chinese-fonts-setup)
;; 不需要消息
;;(set cfs-verbose nil)
;; 添加字体
(setq cfs-personal-fontnames
     '(()
       ("Noto Sans Mono CJK SC", "Noto Sans CJK SC")
       ()))
;; 让 chinese-fonts-setup 随着 emacs 自动生效。
(chinese-fonts-setup-enable)
;; 让 spacemacs mode-line 中的 Unicode 图标正确显示。
(cfs-set-spacemacs-fallback-fonts)
 

;; Setting English Font
;;(set-face-attribute
;;  'default nil :font "Consolas 11")
 
;; Chinese Font
;;(dolist (charset '(kana han symbol cjk-misc bopomofo))
;;    (set-fontset-font (frame-parameter nil 'font)
;;                      charset
;;                      (font-spec :family "Noto Sans S Chinese" :size 14)))

;; (setq face-font-rescale-alist '(("Noto Sans S Chinese" 1.2) ("Microsoft Yahei" . 1.2) ("WenQuanYi Zen Hei" . 1.2)))

;; For coffee mode
(setq tab-width 2)
