;; all this must load after el-get init.

;; color-theme
(color-theme-pok-wog)

;; smex
(require 'smex) ; Not needed if you use package.el
(smex-initialize) ; Can be omitted. This might cause a (minimal) delay
                  ; when Smex is auto-initialized on its first run.

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x. Not needed.
;; (global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; set hook for coffee
(add-hook 'coffee-mode-hook
      '(lambda ()
         (setq c-basic-offset 2)
         (setq indent-tabs-mode nil) 
         (setq default-tab-width 2) 
         (setq tab-width 2) 
         ;;(setq tab-stop-list ()) 
         ;;(c-set-style "python")
         ))

;; set hook for javascript
(add-hook 'javascript-mode-hook
      '(lambda ()
         (setq c-basic-offset 2)
         (setq indent-tabs-mode nil) 
         (setq default-tab-width 2) 
         (setq tab-width 2) 
         ;;(setq tab-stop-list ()) 
         ;;(c-set-style "python")
         ))

;; add mode dir
(add-to-list 'load-path "~/.emacs.d/jade-mode/")

;; jade-mode
(require 'jade-mode)

;; stylus-mode
(require 'stylus-mode)

;; auto-complete
;;(require 'auto-complete-settings)


