;;; Config -- Personnal configuration on top of prelude
;;; Commentary:

;;; Code:
(prelude-require-packages
 '(which-key
   org-bullets))

;; I am not a guru, and  I need guidance:
(require 'which-key)
(which-key-mode)
(setq prelude-guru nil)

;; Some org-mod tweaks
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
(setq org-startup-indented t)

;; Multiple cursors
(global-set-key (kbd "C-»") 'mc/mark-next-like-this)
(global-set-key (kbd "C-«") 'mc/mark-previous-like-this)

(global-set-key (kbd "C-c C-«") 'mc/mark-all-like-this)
(global-set-key (kbd "C-c C-»") 'mc/mark-all-like-this)

(global-set-key (kbd "C-S-<mouse-1>") 'mc/add-cursor-on-click)

;; Keyboard - Navigation
(global-set-key (kbd "M-o") 'other-window)
(global-set-key (kbd "M-n") 'forward-paragraph)
(global-set-key (kbd "M-p") 'backward-paragraph)

;; Org capture
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-c e") 'yas-expand)

(provide 'config)
;;; config.el ends here
