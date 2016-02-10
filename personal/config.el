;;; Config -- Personnal configuration on top of prelude
;;; Commentary:

;;; Code:
(prelude-require-packages
 '(which-key
   org-bullets
   aggressive-indent))

(add-hook 'clojure-mode-hook #'aggressive-indent-mode)

;; I am not a guru, and  I need guidance:
(require 'which-key)
(which-key-mode)
(setq prelude-guru nil)

;; Some org-mod tweaks
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
(setq org-agenda-files '("~/org/todo.org" "~/org/journal.org"))
(setq org-startup-indented t)
(setq org-todo-keywords
      '((sequence "TODO(t)" "STARTED(s)" "PENDING(p)"
                  "|" "DONE(d)" "DEFERED(f)" "CANCELLED(x)")))

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/org/todo.org" "Tasks")
         "* TODO %?\n\n%a\n")
        ("j" "Journal" entry (file+datetree+prompt "~/org/journal.org")
         "* %?\nEntered on %U\n\n%i\nLink:%a\n")))

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
