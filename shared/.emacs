(load-file "~/.emacs.custom/require.el")
(load-file "~/.emacs.custom/style.el")

(require-package 'ido-completing-read+)
(ido-mode 1)
(ido-everywhere 1)
(ido-ubiquitous-mode 1)

(require-package 'evil)
(evil-mode 1)
;; Prevent Evil pasting from overwriting the clipboard
(setq-default evil-kill-on-visual-paste nil)

(require-package 'which-key)
(which-key-mode)

(require-package 'corfu)
(global-corfu-mode)
(setq corfu-auto t
      corfu-quit-no-match 'separator)

(require-package  'projectile
		  'ivy
		  'counsel
		  'smex)

;; Hooks
(defun auto-indent-on-save ()
  "Auto-indent the entire buffer before saving."
  (when (derived-mode-p 'prog-mode)
    (indent-region (point-min) (point-max))))

(add-hook 'before-save-hook 'auto-indent-on-save)

;; Keybinds
(evil-set-leader 'normal (kbd "SPC"))

;; Standard
(evil-define-key 'normal 'global (kbd "<leader>fj") 'dired-jump)
(evil-define-key 'normal 'global (kbd "<leader>ff") 'find-file)
(evil-define-key 'normal 'global (kbd "<leader>cc") 'compile)
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; Smex
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; Counsel
(evil-define-key 'normal 'global (kbd "<leader>fz") 'counsel-fzf)
(evil-define-key 'normal 'global (kbd "<leader>im") 'counsel-M-x)
(evil-define-key 'normal 'global (kbd "<leader>ig") 'counsel-grep)
(evil-define-key 'normal 'global (kbd "<leader>fb") 'counsel-ibuffer)
(evil-define-key 'normal 'global (kbd "<leader>id") 'counsel-dired)
(evil-define-key 'normal 'global (kbd "<leader>ik") 'counsel-describe-function)
(evil-define-key 'normal 'global (kbd "<leader>iv") 'counsel-describe-variable)
(evil-define-key 'normal 'global (kbd "<leader>is") 'counsel-describe-symbol)

;; Projectile
(evil-define-key 'normal 'global (kbd "<leader>pf") 'projectile-find-file)
(evil-define-key 'normal 'global (kbd "<leader>pg") 'projectile-grep)
(evil-define-key 'normal 'global (kbd "<leader>pd") 'projectile-dired)
(evil-define-key 'normal 'global (kbd "<leader>pc") 'projectile-compile-project)
(evil-define-key 'normal 'global (kbd "<leader>ps") 'projectile-find-other-file)

;; Corfu
(evil-define-key 'normal 'global (kbd "<leader>cd") 'corfu-mode)
(define-key corfu-map (kbd "RET") nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(company counsel evil ido-completing-read+ ivy projectile smex)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
