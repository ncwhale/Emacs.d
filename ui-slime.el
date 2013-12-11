(add-to-list 'load-path "~/.emacs.d/slime")
(setq inferior-lisp-program "/usr/bin/sbcl")
(require 'slime)
(slime-setup)

;;(require 'slime-js)

(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(global-set-key [f5] 'slime-js-reload)
(add-hook 'js2-mode-hook
          (lambda ()
            (slime-js-minor-mode 1)))

(add-hook 'css-mode-hook
          (lambda ()
            (define-key css-mode-map "\M-\C-x" 'slime-js-refresh-css)
            (define-key css-mode-map "\C-c\C-r" 'slime-js-embed-css)))


(add-hook 'Stylus-mode-hook 
          (lambda ()
            (define-key css-mode-map "\M-\C-x" 'slime-js-refresh-css)
            ;;(define-key css-mode-map "\C-c\C-r" 'slime-js-embed-css)
))
