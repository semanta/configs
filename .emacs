(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-view-program-selection
   (quote
    (((output-dvi has-no-display-manager)
      nnn "dvi2tty")
     ((output-dvi style-pstricks)
      "dvips and gv")
     (output-dvi "xdvi")
     (output-pdf "Evince")
     (output-html "xdg-open"))))
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(custom-enabled-themes nil)
 '(custom-safe-themes
   (quote
    ("8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "790e74b900c074ac8f64fa0b610ad05bcfece9be44e8f5340d2d94c1e47538de" "0d81c8aaf83fd781a0a5a6f528dea6824d22fac8e1ef513be15c835a97b24099" default)))
 '(custom-theme-load-path
   (quote
    ("/home/zeninja/.emacs.d/themes/emacs-color-theme-solarized-master/" "/home/zeninja/.emacs.d/elpa/aurora-theme-20151015.1102/" custom-theme-directory t)) t)
 '(desktop-save-mode t)
 '(fci-rule-color "#232A2F")
 '(inhibit-startup-screen t)
 '(line-number-mode nil)
 '(package-selected-packages
   (quote
    (geben org-trello yaml-mode twig-mode json-mode neotree company-php php-mode bongo typing-game speed-type relative-line-numbers python-django powerline php+-mode markdown-mode+ magit jedi flycheck elpy dumb-jump django-mode color-theme aurora-theme auctex ace-window)))
 '(php-mode-coding-style (quote psr2))
 '(tool-bar-mode nil)
 '(vc-annotate-background "#2B3B40")
 '(vc-annotate-color-map
   (quote
    ((20 . "#74CBC4")
     (40 . "#74CBC4")
     (60 . "#C2E982")
     (80 . "#FFC400")
     (100 . "#C792EA")
     (120 . "#C792EA")
     (140 . "#546D7A")
     (160 . "#546D7A")
     (180 . "#FF516D")
     (200 . "#9FC59F")
     (220 . "#859900")
     (240 . "#F77669")
     (260 . "#FF516D")
     (280 . "#82B1FF")
     (300 . "#82B1FF")
     (320 . "#82B1FF")
     (340 . "#D9F5DD")
     (360 . "#FFCB6B"))))
 '(vc-annotate-very-old-color "#FFCB6B")
 '(viper-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(mode-line ((t (:background "dark red" :foreground "white" :box (:line-width 1 :color "grey75" :style released-button) :height 0.9)))))
(set-face-attribute 'default nil :height 100)
(require 'ido)
(ido-mode t)



(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
(global-set-key (kbd "C-c r") 'query-replace)

(global-set-key (kbd "C-x o") 'ace-window)
(global-set-key (kbd "C-x g") 'magit-status)

(require 'package)
(package-initialize)
(elpy-enable)
(add-to-list 'package-archives '("elpy" . "http://jorgenschaefer.github.io/packages/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)

(add-to-list 'load-path "/home/zeninja/.emacs.d/twittering-mode/")
(require 'twittering-mode)
(setq twittering-use-master-password t)
(setq twittering-icon-mode t)
(setq twittering-use-icon-storage t)
;; (load-theme 'solarized t)
;; for real time systex checking
(require 'flycheck nil t)
(setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
(add-hook 'elpy-mode-hook 'flycheck-mode)
(add-hook 'after-init-hook #'global-flycheck-mode)

;; highlight the current line
(global-hl-line-mode)
;; shows matching parenthesis when cursor is after them
(show-paren-mode)
;; open todo at startup
;; (find-file "~/Documents/todo.org")
;; ;; displays argument list for current elisp function
;; (turn-on-eldoc-mode)
;; display column number in modeline
(setq column-number-mode t)
;; indicate empty lines after the buffer end
(setq-default indicate-empty-lines t)
;; change "yes" and "no" to "y" and "n"
(fset 'yes-or-no-p 'y-or-n-p)
;; electric pair mode for parenthesis and quotes
(electric-pair-mode)
;; turn on eldoc-mode when a buffer is switched to Emacs Lisp mode
(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)
;; line number at beginning of line
(global-linum-mode)

(require 'powerline)
(powerline-center-theme)

(dumb-jump-mode)

(require 'django-html-mode)
(require 'django-mode)
(add-to-list 'auto-mode-alist '("\\.djhtml$" . django-html-mode))
(global-set-key [f8] 'neotree-toggle)
(add-hook 'json-mode-hook
          (lambda ()
            (make-local-variable 'js-indent-level)
            (setq js-indent-level 8)))
