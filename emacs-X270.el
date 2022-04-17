(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)

(setq backup-directory-alist '((".*" . "~/.emacs.d/backup")))
(menu-bar-mode 0)
(global-display-line-numbers-mode 1)
(tool-bar-mode 0)

(setq org-roam-directory (file-truename "~/Org-Files/"))
(org-roam-db-autosync-mode)
(setq org-roam-node-display-template
      (concat "${title:*} "
              (propertize "${tags:10}" 'face 'org-tag)))
(use-package org-roam
  :ensure t
  :bind (("C-c n l" . org-roam-buffer-toggle)
         ("C-c n f" . org-roam-node-find)
         ("C-c n g" . org-roam-graph)
         ("C-c n i" . org-roam-node-insert)
         ("C-c n c" . org-roam-capture)
         ;; Dailies
         ("C-c n j" . org-roam-dailies-capture-today)))
  
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(tango-dark))
 '(custom-safe-themes
   '("ff2bdf396400590f57810eb985e4bec3a9a2b6aef861c30d7432719d75ac2034" "c1f54dcc924874377b14a05c4993367c988700ce466467c54a1403f360075e0a" default))
 '(package-selected-packages '(use-package org-roam magit-section)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
