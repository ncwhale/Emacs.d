((ac-python status "installed" recipe
	    (:name ac-python :description "Simple Python Completion Source for Auto-Complete" :depends auto-complete :type http :url "http://chrispoole.com/downloads/ac-python.el" :features ac-python))
 (ac-slime status "installed" recipe
	   (:name ac-slime :website "https://github.com/purcell/ac-slime" :description "Emacs auto-complete plugin for Slime symbols" :type github :depends
		  (slime)
		  :pkgname "purcell/ac-slime"))
 (auto-complete status "installed" recipe
		(:name auto-complete :website "https://github.com/auto-complete/auto-complete" :description "The most intelligent auto-completion extension." :type github :pkgname "auto-complete/auto-complete" :depends
		       (popup fuzzy)
		       :features auto-complete-config :post-init
		       (progn
			 (add-to-list 'ac-dictionary-directories
				      (expand-file-name "dict" default-directory))
			 (ac-config-default))))
 (auto-complete-chunk status "installed" recipe
		      (:name auto-complete-chunk :description "Auto-completion for dot.separated.words." :type github :pkgname "tkf/auto-complete-chunk" :depends auto-complete))
 (auto-complete-clang status "installed" recipe
		      (:name auto-complete-clang :website "https://github.com/brianjcj/auto-complete-clang" :description "Auto-complete sources for Clang. Combine the power of AC, Clang and Yasnippet." :type github :pkgname "brianjcj/auto-complete-clang" :depends auto-complete))
 (auto-complete-latex status "installed" recipe
		      (:name auto-complete-latex :description "A LaTeX extention for auto-complete-mode" :website "https://bitbucket.org/tequilasunset/auto-complete-latex" :url "https://bitbucket.org/tequilasunset/auto-complete-latex" :type hg :depends auto-complete))
 (cl-lib status "installed" recipe
	 (:name cl-lib :builtin "24.3" :type elpa :description "Properly prefixed CL functions and macros" :url "http://elpa.gnu.org/packages/cl-lib.html"))
 (coffee-mode status "installed" recipe
	      (:name coffee-mode :website "https://github.com/defunkt/coffee-mode" :description "Emacs Major Mode for CoffeeScript" :type github :pkgname "defunkt/coffee-mode"))
 (col-highlight status "installed" recipe
		(:type github :pkgname "emacsmirror/col-highlight" :name col-highlight :description "Highlight the current column." :type emacsmirror :depends vline))
 (color-moccur status "installed" recipe
	       (:name color-moccur :website "https://github.com/myuhe/color-moccur.el" :description "multi-buffer occur (grep) mode" :type github :pkgname "myuhe/color-moccur.el"))
 (color-theme status "installed" recipe
	      (:name color-theme :description "An Emacs-Lisp package with more than 50 color themes for your use. For questions about color-theme" :website "http://www.nongnu.org/color-theme/" :type http-tar :options
		     ("xzf")
		     :url "http://download.savannah.gnu.org/releases/color-theme/color-theme-6.6.0.tar.gz" :load "color-theme.el" :features "color-theme" :post-init
		     (progn
		       (color-theme-initialize)
		       (setq color-theme-is-global t))))
 (color-theme-almost-monokai status "installed" recipe
			     (:name color-theme-almost-monokai :description "A beautiful, fruity, calm, yet dark color theme for Emacs." :type github :pkgname "lut4rp/almost-monokai" :depends color-theme :prepare
				    (autoload 'color-theme-almost-monokai "color-theme-almost-monokai" "color-theme: almost-monokai" t)))
 (color-theme-chocolate-rain status "installed" recipe
			     (:name color-theme-chocolate-rain :description "Chocolate rain color theme for Emacs based on Ludvig Widman's Choco TextMate theme" :type github :pkgname "marktran/color-theme-chocolate-rain" :depends color-theme :prepare
				    (autoload 'color-theme-chocolate-rain "color-theme-chocolate-rain" "color-theme: chocolate-rain" t)))
 (color-theme-desert status "installed" recipe
		     (:name color-theme-desert :description "A port of VIM's desert color theme to Emacs." :type github :pkgname "superbobry/color-theme-desert" :depends color-theme :prepare
			    (autoload 'color-theme-desert "color-theme-desert" "color-theme: desert" t)))
 (color-theme-ir-black status "installed" recipe
		       (:name color-theme-ir-black :description "IR Black Color Theme for Emacs." :type github :pkgname "burke/color-theme-ir-black" :depends color-theme :prepare
			      (autoload 'color-theme-ir-black "color-theme-ir-black" "color-theme: ir-black" t)))
 (color-theme-mac-classic status "installed" recipe
			  (:name color-theme-mac-classic :description "A emacs colour theme which resembles the TextMate Mac Classic colour theme." :type github :pkgname "jbw/color-theme-mac-classic" :depends color-theme :prepare
				 (autoload 'color-theme-mac-classic "color-theme-mac-classic" "color-theme: mac-classic" t)))
 (color-theme-railscasts status "installed" recipe
			 (:name color-theme-railscasts :description "Railscasts color theme for Emacs." :type github :pkgname "olegshaldybin/color-theme-railscasts" :depends color-theme :prepare
				(autoload 'color-theme-railscasts "color-theme-railscasts" "color-theme: railscasts" t)))
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
 (color-theme-zen-and-art status "installed" recipe
			  (:name color-theme-zen-and-art :description "Irfn's zen with a bit of art." :type github :pkgname "irfn/zen-and-art" :depends color-theme :prepare
				 (autoload 'color-theme-zen-and-art "zen-and-art" "color-theme: zen-and-art" t)))
 (color-theme-zenburn status "installed" recipe
		      (:name color-theme-zenburn :description "The Zenburn colour theme ported to Emacs" :website "https://github.com/bbatsov/zenburn-emacs" :minimum-emacs-version "24" :type github :pkgname "bbatsov/zenburn-emacs" :prepare
			     (add-to-list 'custom-theme-load-path default-directory)))
 (el-get status "installed" recipe
	 (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "master" :pkgname "dimitri/el-get" :info "." :compile
		("el-get.*\\.el$" "methods/")
		:features el-get :post-init
		(when
		    (memq 'el-get
			  (bound-and-true-p package-activated-list))
		  (message "Deleting melpa bootstrap el-get")
		  (unless package--initialized
		    (package-initialize t))
		  (when
		      (package-installed-p 'el-get)
		    (let
			((feats
			  (delete-dups
			   (el-get-package-features
			    (el-get-elpa-package-directory 'el-get)))))
		      (el-get-elpa-delete-package 'el-get)
		      (dolist
			  (feat feats)
			(unload-feature feat t))))
		  (require 'el-get))))
 (emacs-async status "installed" recipe
	      (:name emacs-async :description "Simple library for asynchronous processing in Emacs" :type github :pkgname "jwiegley/emacs-async"))
 (emacs-w3m status "installed" recipe
	    (:name emacs-w3m :description "A simple Emacs interface to w3m" :type cvs :website "http://emacs-w3m.namazu.org/" :module "emacs-w3m" :url ":pserver:anonymous@cvs.namazu.org:/storage/cvsroot" :build
		   `(("autoconf")
		     ("./configure" ,(format "--with-emacs=%s" el-get-emacs))
		     ("make"))
		   :build/windows-nt
		   (("sh" "./autogen.sh")
		    ("sh" "./configure")
		    ("make"))
		   :info "doc"))
 (fuzzy status "installed" recipe
	(:name fuzzy :website "https://github.com/auto-complete/fuzzy-el" :description "Fuzzy matching utilities for GNU Emacs" :type github :pkgname "auto-complete/fuzzy-el"))
 (highline status "installed" recipe
	   (:type github :pkgname "emacsmirror/highline" :name highline :description "minor mode to highlight current line in buffer" :type emacsmirror :prepare
		  (defun highline-mode-on nil "Turn on `highline-mode' mode."
			 (interactive)
			 (highline-mode 1))))
 (idle-highlight-mode status "installed" recipe
		      (:name idle-highlight-mode :description "Idle Highlight Mode." :website "https://github.com/nonsequitur/idle-highlight-mode" :type github :pkgname "nonsequitur/idle-highlight-mode"))
 (js2-mode status "removed" recipe nil)
 (json status "installed" recipe
       (:name json :description "JavaScript Object Notation parser / generator" :type http :builtin "23" :url "http://edward.oconnor.cx/elisp/json.el"))
 (markdown-mode status "installed" recipe
		(:name markdown-mode :description "Major mode to edit Markdown files in Emacs" :website "http://jblevins.org/projects/markdown-mode/" :type github :pkgname "jrblevin/markdown-mode" :prepare
		       (add-to-list 'auto-mode-alist
				    '("\\.\\(md\\|mdown\\|markdown\\)\\'" . markdown-mode))))
 (mmm-mode status "installed" recipe
	   (:name mmm-mode :description "Allow Multiple Major Modes in a buffer" :type github :pkgname "purcell/mmm-mode" :build
		  `(("./autogen.sh")
		    ("./configure")
		    ("make" ,(format "EMACS=%s" el-get-emacs)))
		  :info "mmm.info"))
 (multi-web-mode status "installed" recipe
		 (:name "multi-web-mode" :description "Multi Web Mode is a minor mode which makes web editing in Emacs much easier" :type github :pkgname "fgallina/multi-web-mode"))
 (multiple-cursors status "installed" recipe
		   (:name multiple-cursors :description "An experiment in adding multiple cursors to emacs" :type github :pkgname "magnars/multiple-cursors.el"))
 (package status "installed" recipe
	  (:name package :description "ELPA implementation (\"package.el\") from Emacs 24" :builtin "24" :type http :url "https://repo.or.cz/w/emacs.git/blob_plain/ba08b24186711eaeb3748f3d1f23e2c2d9ed0d09:/lisp/emacs-lisp/package.el" :features package :post-init
		 (progn
		   (let
		       ((old-package-user-dir
			 (expand-file-name
			  (convert-standard-filename
			   (concat
			    (file-name-as-directory default-directory)
			    "elpa")))))
		     (when
			 (file-directory-p old-package-user-dir)
		       (add-to-list 'package-directory-list old-package-user-dir)))
		   (setq package-archives
			 (bound-and-true-p package-archives))
		   (let
		       ((protocol
			 (if
			     (and
			      (fboundp 'gnutls-available-p)
			      (gnutls-available-p))
			     "https://"
			   (lwarn
			    '(el-get tls)
			    :warning "Your Emacs doesn't support HTTPS (TLS)%s"
			    (if
				(eq system-type 'windows-nt)
				",\n  see https://github.com/dimitri/el-get/wiki/Installation-on-Windows." "."))
			   "http://"))
			(archives
			 '(("melpa" . "melpa.org/packages/")
			   ("gnu" . "elpa.gnu.org/packages/")
			   ("marmalade" . "marmalade-repo.org/packages/"))))
		     (dolist
			 (archive archives)
		       (add-to-list 'package-archives
				    (cons
				     (car archive)
				     (concat protocol
					     (cdr archive)))))))))
 (php-mode status "installed" recipe
	   (:name php-mode :description "A PHP mode for GNU Emacs " :type github :pkgname "ejmr/php-mode" :website "https://github.com/ejmr/php-mode"))
 (popup status "installed" recipe
	(:name popup :website "https://github.com/auto-complete/popup-el" :description "Visual Popup Interface Library for Emacs" :type github :submodule nil :depends cl-lib :pkgname "auto-complete/popup-el"))
 (slime status "installed" recipe
	(:name slime :description "Superior Lisp Interaction Mode for Emacs" :type github :autoloads "slime-autoloads" :info "doc" :pkgname "slime/slime" :depends cl-lib :load-path
	       ("." "contrib")
	       :build
	       '(("sed" "-i" "s/@itemx INIT-FUNCTION/@item INIT-FUNCTION/" "doc/slime.texi")
		 ("make" "-C" "doc" "slime.info"))
	       :build/darwin
	       '(("make" "-C" "doc" "slime.info"))
	       :build/berkeley-unix
	       '(("gmake" "-C" "doc" "slime.info"))
	       :post-init
	       (slime-setup)))
 (slime-loads status "removed" recipe nil)
 (smex status "installed" recipe
       (:name smex :description "M-x interface with Ido-style fuzzy matching." :type github :pkgname "nonsequitur/smex" :features smex :post-init
	      (smex-initialize)))
 (swank-js status "removed" recipe nil)
 (vline status "required" recipe nil)
 (yasnippet status "installed" recipe
	    (:name yasnippet :website "https://github.com/capitaomorte/yasnippet.git" :description "YASnippet is a template system for Emacs." :type github :pkgname "capitaomorte/yasnippet" :compile "yasnippet.el" :submodule nil :build
		   (("git" "submodule" "update" "--init" "--" "snippets")))))
