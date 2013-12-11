(custom-set-variables
 ;; custom-set-variables was added by Custom.
 '(current-language-environment "UTF-8")
 '(fancy-splash-image nil))

;; Add load path
(add-to-list 'load-path "~/.emacs.d/")
(load "ui-init")
(load "ui-slime")

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

;; package manage
(require 'package)

;; ELPA
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

;;(package-initialize)
(add-hook 'after-init-hook (lambda () (require 'slime-js )))

;; EL-Get
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)


;; UI set file
(load "ui-config")

;; emms
(load "ui-emms")

;; Interface Config

;; slime-js
;;(require 'slime-js nil 'noerror)

;; Interface Config Alpha
(set-frame-parameter (selected-frame) 'alpha '(92 50))
(add-to-list 'default-frame-alist '(alpha 92 50))


