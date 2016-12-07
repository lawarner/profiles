;; New to emacs 22.1
(setq inhibit-splash-screen 1)

(set-default-font "7x13")

(setq c-basic-offset 4)
(setq tab-width 4)


;; setup language modes:


(defun my-c++-indent-setup()
  (defconst my-cc-style
    '("stroustrup"
      (c-offsets-alist . ((innamespace . [0])))))
  (c-add-style "my-cc-style" my-cc-style)
  (c-set-style "my-cc-style")
  (setq tab-width 4)
  (setq indent-tabs-mode nil))
(add-hook 'c++-mode-hook 'my-c++-indent-setup)
(add-hook 'c-mode-hook 'my-c++-indent-setup)
(add-hook 'objc-mode-hook 'my-c++-indent-setup)

(setq auto-mode-alist (cons '("\\.py$" . python-mode) auto-mode-alist))
(setq interpreter-mode-alist (cons '("python" . python-mode)
				   interpreter-mode-alist))
(autoload 'python-mode "python-mode" "Python editing mode." t)
(setq py-smart-indentation nil)

;;

(set-background-color "honeydew")
(set-foreground-color "black")

(setq initial-frame-alist '((top . 8) (left . 44) (width . 96) (height . 56)))

(global-font-lock-mode 1)

(add-hook 'html-mode-hook
        (lambda()
	  (setq sgml-basic-offset 4)
	  (setq indent-tabs-mode nil)))

(autoload 'javascript-mode "js-mode" "Yay HTML5" t)
(setq auto-mode-alist (cons '("\\.html$" . js-mode)   auto-mode-alist))
(setq auto-mode-alist (cons '("\\.js$" . js-mode)   auto-mode-alist))
;; (autoload 'html-helper-mode "html-helper-mode" "Yay HTML" t)
;; (setq auto-mode-alist (cons '("\\.html$" . html-helper-mode)   auto-mode-alist))
;; (setq auto-mode-alist (cons '("\\.asp$" . html-helper-mode)    auto-mode-alist))
;; (setq auto-mode-alist (cons '("\\.jsp$" . html-helper-mode)    auto-mode-alist))
;; (setq auto-mode-alist (cons '("\\.phtml$" . html-helper-mode)  auto-mode-alist))

;; jsp sub-mode for html helper mode:
;; (add-hook 'html-helper-load-hook (function (lambda () (load "jsp-html-helper-mode.el"))))

;; This will start up in text mode by default. Commented here since this is too drastic:
;; (setq default-major-mode 'text-mode)
;; Set auto-fill for text mode editting
;; (add-hook 'text-mode-hook 'turn-on-auto-fill)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(indent-tabs-mode nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
