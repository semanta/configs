(package-initialize)

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (tsdh-dark)))
 '(desktop-save-mode t)
 '(global-linum-mode t)
 '(package-selected-packages
   (quote
    (vue-mode js2-mode twig-mode flymake-puppet php-mode web-mode magit all-the-icons neotree)))
 '(php-mode-coding-style (quote psr2)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; neo tree setup
(global-set-key [f8] 'neotree-toggle)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))

;; text size
(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)

(global-set-key (kbd "C-x g") 'magit-status)

;; javascript indentation offset
(setq js-indent-level 2)
;; css indentation offset
(setq css-indent-offset 2)

(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
(setq web-mode-engines-alist
  '(("php"    . "\\.phtml\\'")
    ("blade"  . "\\.blade\\."))
)
