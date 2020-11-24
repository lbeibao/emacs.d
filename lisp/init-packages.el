;; 初始化包管理

(when (>= emacs-major-version 24)
;;     (add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
  (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                           ("melpa" . "http://elpa.emacs-china.org/melpa/")))

     )

 ;; cl - Common Lisp Extension
(require 'cl)

;; Add Packages
(defvar maoxiang/packages '(
		;; --- Auto-completion ---
		company
		;; --- Better Editor ---
		hungry-delete
		swiper
		counsel
		smartparens
		;; --- Major Mode ---
		js2-mode
		;; --- Minor Mode ---
		nodejs-repl
		exec-path-from-shell
		;; --- Themes ---
		monokai-theme
		solarized-theme
		popwin
		org-pomodoro
		htmlize
		) "Default packages")

(setq package-selected-packages maoxiang/packages)


(defun maoxiang/packages-installed-p ()
     (loop for pkg in maoxiang/packages
	   when (not (package-installed-p pkg)) do (return nil)
	   finally (return t)))

(unless (maoxiang/packages-installed-p)
     (message "%s" "Refreshing package database...")
     (package-refresh-contents)
     (dolist (pkg maoxiang/packages)
       (when (not (package-installed-p pkg))
	 (package-install pkg))))

(require 'recentf)

(require 'hungry-delete)

(require 'popwin)

(ivy-mode 1)

(provide 'init-packages)

