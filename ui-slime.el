(add-to-list 'load-path "~/.emacs.d/slime")
(setq inferior-lisp-program "/usr/local/bin/sbcl")
(require 'slime)
(slime-setup)
