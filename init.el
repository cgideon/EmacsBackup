(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(add-to-list 'package-pinned-packages '(cider . "melpa") t)
(add-to-list 'package-pinned-packages '(magit . "melpa") t)

(package-initialize)

;; Download the ELPA archive description if needed.                                                                                                             
;; This informs Emacs about the latest versions of all packages, and                                                                                            
;; makes them available for download.                                                                                                                           
(when (not package-archive-contents)
  (package-refresh-contents))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(coffee-tab-width 2)
 '(package-selected-packages
   '(git-messenger multi-term helm-gitignore helm-git git dired-git fountain-mode cheatsheet discover discover-my-major guide-key-tip guide-key helm-describe-modes helm-descbinds which-key omnisharp csharp-mode go go-mode phpunit php-mode tide npm json-mode js2-mode emmet-mode web-mode elpy aggressive-indent project-explorer find-file-in-project simpleclip popup-kill-ring move-text undo-fu-session undo-fu ace-jump-mode treemacs diredful neotree centaur-tabs ivy helm pyenv-mode pyvenv pyimport python-info python-pytest python-mode anaconda-mode magit tagedit rainbow-delimiters projectile smex ido-completing-read+ cider clojure-mode-extra-font-locking clojure-mode paredit exec-path-from-shell)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; Place downloaded elisp files in ~/.emacs.d/vendor. You'll then be able     ;; to load them.                                                              
;; (require 'yaml-mode)                                                       ;; (add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))                    
;; Adding this code will make Emacs enter yaml mode whenever you open         ;; a .yml file                                                                ;; (add-to-list 'load-path "~/.emacs.d/vendor")
;;;;

;; Customization                                                              
;; Add a directory to our load path so that when you `load` things            ;; below, Emacs knows where to look for the corresponding file.
(add-to-list 'load-path "~/.emacs.d/customizations")

;; Sets up exec-path-from-shell so that Emacs will use the correct            ;; environment variables
(load "shell-integration.el")

;; These customizations make it easier for you to navigate files,             ;; switch buffers, and choose options from the minibuffer.
(load "navigation.el")

;; These customizations change the way emacs looks and disable/enable          w                                                                                 
;; some user interface elements                                                                                                                                 
(load "ui.el")

;; These customizations make editing a bit nicer.                                                                                                               
(load "editing.el")

;; Hard-to-categorize customizations                                                                                                                            
(load "misc.el")

;; For editing lisps                                                                                                                                            
(load "elisp-editing.el")

;; Langauage-specific
(load "setup-clojure.el")
(load "setup-js.el")


