((auto-complete status "installed" recipe
                (:name auto-complete :website "http://auto-complete.org/" :description "The most intelligent auto-completion extension." :type github :pkgname "auto-complete/auto-complete" :depends
                       (popup fuzzy)))
 (auto-complete+ status "installed" recipe
                 (:name auto-complete+ :auto-generated t :type emacswiki :description "Auto complete plus" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/auto-complete+.el"))
 (auto-complete-css status "installed" recipe
                    (:name auto-complete-css :description "Auto-complete sources for CSS" :type http :url "http://www.cx4a.org/pub/auto-complete-css.el" :depends auto-complete))
 (auto-complete-etags status "installed" recipe
                      (:name auto-complete-etags :type emacswiki :description "Auto-complete sources for etags" :depends auto-complete))
 (auto-complete-extension status "installed" recipe
                          (:name auto-complete-extension :type emacswiki :description "Some extension for auto-complete-mode" :depends auto-complete))
 (color-theme status "installed" recipe
              (:name color-theme :description "An Emacs-Lisp package with more than 50 color themes for your use. For questions about color-theme" :website "http://www.nongnu.org/color-theme/" :type http-tar :options
                     ("xzf")
                     :url "http://download.savannah.gnu.org/releases/color-theme/color-theme-6.6.0.tar.gz" :load "color-theme.el" :features "color-theme" :post-init
                     (progn
                       (color-theme-initialize)
                       (setq color-theme-is-global t))))
 (color-theme-ahei status "installed" recipe
                   (:name color-theme-ahei :auto-generated t :type emacswiki :description "Color Theme by ahei" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/color-theme-ahei.el"))
 (color-theme-almost-monokai status "installed" recipe
                             (:name color-theme-almost-monokai :description "A beautiful, fruity, calm, yet dark color theme for Emacs." :type github :pkgname "lut4rp/almost-monokai" :depends color-theme :prepare
                                    (autoload 'color-theme-almost-monokai "color-theme-almost-monokai" "color-theme: almost-monokai" t)))
 (color-theme-black-purple status "installed" recipe
                           (:name color-theme-black-purple :auto-generated t :type emacswiki :description "" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/color-theme-black-purple.el"))
 (color-theme-chocolate-rain status "installed" recipe
                             (:name color-theme-chocolate-rain :description "Chocolate rain color theme for Emacs based on Ludvig Widman's Choco TextMate theme" :type github :pkgname "marktran/color-theme-chocolate-rain" :depends color-theme :prepare
                                    (autoload 'color-theme-chocolate-rain "color-theme-chocolate-rain" "color-theme: chocolate-rain" t)))
 (color-theme-desert status "installed" recipe
                     (:name color-theme-desert :description "A port of VIM's desert color theme to Emacs." :type github :pkgname "superbobry/color-theme-desert" :depends color-theme :prepare
                            (autoload 'color-theme-desert "color-theme-desert" "color-theme: desert" t)))
 (color-theme-domq status "installed" recipe
                   (:name color-theme-domq :auto-generated t :type emacswiki :description "DominiqueQuatravaux's very own color theme!" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/color-theme-domq.el"))
 (color-theme-emacs-revert-theme status "installed" recipe
                                 (:name color-theme-emacs-revert-theme :auto-generated t :type emacswiki :description "" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/color-theme-emacs-revert-theme.el"))
 (color-theme-empty-void status "installed" recipe
                         (:name color-theme-empty-void :auto-generated t :type emacswiki :description "" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/color-theme-empty-void.el"))
 (color-theme-inkpot status "installed" recipe
                     (:name color-theme-inkpot :auto-generated t :type emacswiki :description "" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/color-theme-inkpot.el"))
 (color-theme-ir-black status "installed" recipe
                       (:name color-theme-ir-black :description "IR Black Color Theme for Emacs." :type github :pkgname "burke/color-theme-ir-black" :depends color-theme :prepare
                              (autoload 'color-theme-ir-black "color-theme-ir-black" "color-theme: ir-black" t)))
 (color-theme-mac-classic status "installed" recipe
                          (:name color-theme-mac-classic :description "A emacs colour theme which resembles the TextMate Mac Classic colour theme." :type github :pkgname "jbw/color-theme-mac-classic" :depends color-theme :prepare
                                 (autoload 'color-theme-mac-classic "color-theme-mac-classic" "color-theme: mac-classic" t)))
 (color-theme-maker status "installed" recipe
                    (:name color-theme-maker :auto-generated t :type emacswiki :description "install color themes" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/color-theme-maker.el"))
 (color-theme-railscasts status "installed" recipe
                         (:name color-theme-railscasts :description "Railscasts color theme for Emacs." :type github :pkgname "olegshaldybin/color-theme-railscasts" :depends color-theme :prepare
                                (autoload 'color-theme-railscasts "color-theme-railscasts" "color-theme: railscasts" t)))
 (color-theme-reg status "installed" recipe
                  (:name color-theme-reg :auto-generated t :type emacswiki :description "is modified based on color-theme-x.el, convert color themes to win32 register settings. " :website "https://raw.github.com/emacsmirror/emacswiki.org/master/color-theme-reg.el"))
 (color-theme-sanityinc status "installed" recipe
                        (:name color-theme-sanityinc :description "Two pleasant medium-contrast Emacs color themes in light and dark flavours" :type github :pkgname "purcell/color-theme-sanityinc" :depends color-theme :prepare
                               (progn
                                 (autoload 'color-theme-sanityinc-light "color-theme-sanityinc" "color-theme: sanityinc-light" t)
                                 (autoload 'color-theme-sanityinc-dark "color-theme-sanityinc" "color-theme: sanityinc-dark" t))))
 (color-theme-solarized status "installed" recipe
                        (:name color-theme-solarized :description "Emacs highlighting using Ethan Schoonover's Solarized color scheme" :type github :pkgname "sellout/emacs-color-theme-solarized" :depends color-theme :prepare
                               (progn
                                 (add-to-list 'custom-theme-load-path default-directory)
                                 (autoload 'color-theme-solarized-light "color-theme-solarized" "color-theme: solarized-light" t)
                                 (autoload 'color-theme-solarized-dark "color-theme-solarized" "color-theme: solarized-dark" t))))
 (color-theme-subdued status "installed" recipe
                      (:name color-theme-subdued :description "Color theme based on the Tango color palette" :type http :url "http://jblevins.org/git/misc.git/plain/color-theme-subdued.el" :depends color-theme :prepare
                             (autoload 'color-theme-subdued "color-theme-subdued" "color-theme: subdued" t)))
 (color-theme-tango status "installed" recipe
                    (:name color-theme-tango :description "Color theme based on Tango Palette. Created by danranx@gmail.com" :type emacswiki :depends color-theme :prepare
                           (autoload 'color-theme-tango "color-theme-tango" "color-theme: tango" t)))
 (color-theme-tango-2 status "installed" recipe
                      (:name color-theme-tango-2 :description "A color theme based on Tango Palette." :type github :pkgname "wfarr/color-theme-tango-2" :depends color-theme :prepare
                             (autoload 'color-theme-tango-2 "color-theme-tango-2" "color-theme: tango-2" t)))
 (color-theme-tangotango status "installed" recipe
                         (:name color-theme-tangotango :description "Another color theme based on the Tango palette." :type github :pkgname "juba/color-theme-tangotango" :depends color-theme :prepare
                                (autoload 'color-theme-tangotango "color-theme-tangotango" "color-theme: tangotango" t)))
 (color-theme-tomorrow status "installed" recipe
                       (:name color-theme-tomorrow :description "Emacs highlighting using Chris Charles's Tomorrow color scheme" :type github :pkgname "ccharles/Tomorrow-Theme" :depends color-theme :prepare
                              (progn
                                (autoload 'color-theme-tomorrow "GNU Emacs/color-theme-tomorrow" "color-theme: tomorrow" t)
                                (autoload 'color-theme-tomorrow-night "GNU Emacs/color-theme-tomorrow" "color-theme: tomorrow-night" t)
                                (autoload 'color-theme-tomorrow-night-eighties "GNU Emacs/color-theme-tomorrow" "color-theme: tomorrow-night-eighties" t)
                                (autoload 'color-theme-tomorrow-night-blue "GNU Emacs/color-theme-tomorrow" "color-theme: tomorrow-night-blue" t)
                                (autoload 'color-theme-tomorrow-night-bright "GNU Emacs/color-theme-tomorrow" "color-theme: tomorrow-night-bright" t))))
 (color-theme-twilight status "installed" recipe
                       (:name color-theme-twilight :description "Twilight color theme for GNU Emacs inspired by TextMate." :type github :pkgname "crafterm/twilight-emacs" :depends color-theme :prepare
                              (autoload 'color-theme-twilight "color-theme-twilight" "color-theme: twilight" t)))
 (color-theme-ubuntu2 status "installed" recipe
                      (:name color-theme-ubuntu2 :auto-generated t :type emacswiki :description "" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/color-theme-ubuntu2.el"))
 (color-theme-vim-insert-mode status "installed" recipe
                              (:name color-theme-vim-insert-mode :auto-generated t :type emacswiki :description "" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/color-theme-vim-insert-mode.el"))
 (color-theme-x status "installed" recipe
                (:name color-theme-x :auto-generated t :type emacswiki :description "convert color themes to X11 resource settings" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/color-theme-x.el"))
 (color-theme-zen-and-art status "installed" recipe
                          (:name color-theme-zen-and-art :description "Irfn's zen with a bit of art." :type github :pkgname "irfn/zen-and-art" :depends color-theme :prepare
                                 (autoload 'color-theme-zen-and-art "zen-and-art" "color-theme: zen-and-art" t)))
 (color-theme-zenburn status "installed" recipe
                      (:type github :username "emacsmirror" :name color-theme-zenburn :type emacsmirror :pkgname "zenburn-theme" :description "Just some alien fruit salad to keep you in the zone" :prepare
                             (progn
                               (autoload 'color-theme-zenburn "zenburn" "Just some alien fruit salad to keep you in the zone." t)
                               (defalias 'zenburn #'color-theme-zenburn))))
 (colour-region status "installed" recipe
                (:name colour-region :auto-generated t :type emacswiki :description "Toggle regions of the buffer with different text snippets" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/colour-region.el"))
 (css-mode status "installed" recipe
           (:name css-mode :description "Minor mode for CSS" :features css-mode :type elpa))
 (css-palette status "installed" recipe
              (:name css-palette :auto-generated t :type emacswiki :description "" palettes " inside block comments" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/css-palette.el"))
 (el-get status "installed" recipe
         (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "4.stable" :pkgname "dimitri/el-get" :features el-get :info "." :load "el-get.el"))
 (emacs-async status "installed" recipe
              (:name emacs-async :description "Simple library for asynchronous processing in Emacs" :type github :pkgname "jwiegley/emacs-async"))
 (emacs-w3m status "installed" recipe
            (:name emacs-w3m :description "A simple Emacs interface to w3m" :type cvs :module "emacs-w3m" :url ":pserver:anonymous@cvs.namazu.org:/storage/cvsroot" :build
                   `("autoconf"
                     ("./configure" ,(concat "--with-emacs=" el-get-emacs))
                     "make")
                   :build/windows-nt
                   ("sh /usr/bin/autoconf" "sh ./configure" "make")
                   :info "doc"))
 (flyphpcs status "installed" recipe
           (:name flyphpcs :auto-generated t :type emacswiki :description "Flymake for PHP via PHP-CodeSniffer" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/flyphpcs.el"))
 (fuzzy status "installed" recipe
        (:name fuzzy :website "https://github.com/auto-complete/fuzzy-el" :description "Fuzzy matching utilities for GNU Emacs" :type github :pkgname "auto-complete/fuzzy-el"))
 (highline status "installed" recipe
           (:name highline :auto-generated t :type emacswiki :description "minor mode to highlight current line in buffer" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/highline.el"))
 (idle-highlight-mode status "installed" recipe
                      (:name idle-highlight-mode :description "Idle Highlight Mode." :website "https://github.com/nonsequitur/idle-highlight-mode" :type github :pkgname "nonsequitur/idle-highlight-mode"))
 (mmm-mode status "installed" recipe
           (:name mmm-mode :description "Allow Multiple Major Modes in a buffer" :type github :pkgname "purcell/mmm-mode"))
 (multi-web-mode status "installed" recipe
                 (:name "multi-web-mode" :description "Multi Web Mode is a minor mode which makes web editing in Emacs much easier" :type github :pkgname "martialboniou/multi-web-mode"))
 (package status "installed" recipe
          (:name package :description "ELPA implementation (\"package.el\") from Emacs 24" :builtin 24 :type http :url "http://repo.or.cz/w/emacs.git/blob_plain/1a0a666f941c99882093d7bd08ced15033bc3f0c:/lisp/emacs-lisp/package.el" :shallow nil :features package :post-init
                 (progn
                   (setq package-user-dir
                         (expand-file-name
                          (convert-standard-filename
                           (concat
                            (file-name-as-directory default-directory)
                            "elpa")))
                         package-directory-list
                         (list
                          (file-name-as-directory package-user-dir)
                          "/usr/share/emacs/site-lisp/elpa/"))
                   (make-directory package-user-dir t)
                   (unless
                       (boundp 'package-subdirectory-regexp)
                     (defconst package-subdirectory-regexp "^\\([^.].*\\)-\\([0-9]+\\(?:[.][0-9]+\\)*\\)$" "Regular expression matching the name of\n a package subdirectory. The first subexpression is the package\n name. The second subexpression is the version string."))
                   (setq package-archives
                         '(("ELPA" . "http://tromey.com/elpa/")
                           ("gnu" . "http://elpa.gnu.org/packages/")
                           ("marmalade" . "http://marmalade-repo.org/packages/")
                           ("SC" . "http://joseito.republika.pl/sunrise-commander/"))))))
 (php-completion status "installed" recipe
                 (:name php-completion :auto-generated t :type emacswiki :description "complete everything PHP with Anything.el" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/php-completion.el"))
 (php-doc status "installed" recipe
          (:name php-doc :auto-generated t :type emacswiki :description "Php document helper" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/php-doc.el"))
 (php-mode status "installed" recipe
           (:name php-mode :description "A PHP mode for GNU Emacs " :type github :pkgname ejmr/php-mode :website "https://github.com/ejmr/php-mode"))
 (php-mode-improved status "installed" recipe
                    (:name php-mode-improved :description "Major mode for editing PHP code. This is a version of the php-mode from http://php-mode.sourceforge.net that fixes a few bugs which make using php-mode much more palatable" :type emacswiki :load
                           ("php-mode-improved.el")
                           :features php-mode))
 (popup status "installed" recipe
        (:name popup :website "https://github.com/auto-complete/popup-el" :description "Visual Popup Interface Library for Emacs" :type github :pkgname "auto-complete/popup-el"))
 (smex status "installed" recipe
       (:name smex :description "M-x interface with Ido-style fuzzy matching." :type github :pkgname "nonsequitur/smex" :features smex :post-init
              (smex-initialize)))
 (yasnippet status "installed" recipe
            (:name yasnippet :website "https://github.com/capitaomorte/yasnippet.git" :description "YASnippet is a template system for Emacs." :type github :pkgname "capitaomorte/yasnippet" :features "yasnippet" :pre-init
                   (unless
                       (or
                        (boundp 'yas/snippet-dirs)
                        (get 'yas/snippet-dirs 'customized-value))
                     (setq yas/snippet-dirs
                           (list
                            (concat el-get-dir
                                    (file-name-as-directory "yasnippet")
                                    "snippets"))))
                   :post-init
                   (put 'yas/snippet-dirs 'standard-value
                        (list
                         (list 'quote
                               (list
                                (concat el-get-dir
                                        (file-name-as-directory "yasnippet")
                                        "snippets")))))
                   :compile nil :submodule nil))
 (yasnippet-config status "installed" recipe
                   (:name yasnippet-config :auto-generated t :type emacswiki :description "Configuration of yasnippet.el" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/yasnippet-config.el")))
