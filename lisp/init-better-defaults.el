;; Find Executable Path on OS X
(when (memq window-system '(mac ns))
   (exec-path-from-shell-initialize))

;; 调整Windows 10 下面垃圾回收配置
(when (eq system-type 'windows-nt)
  (setq gc-cons-threshold (* 512 1024 1024))
  (setq gc-cons-percentage 0.5)   (run-with-idle-timer 5 t #'garbage-collect)
  (setq garbage-collection-messages t)
  )

;; 设置窗口位置
(set-frame-position (selected-frame) 2 10)
;; 设置GUI窗口的尺寸
;;(set-frame-width (selected-frame) 200)
(when (eq system-type 'windows-nt)
  (set-frame-height (selected-frame) 35)
)
(when (eq system-type 'gnu/linux)
  (set-frame-height (selected-frame) 50)
)
(when (eq system-type 'darwin)
  (set-frame-height (selected-frame) 50)
)



;; 禁止生成备份文件
(setq make-backup-files nil)

;; 禁止自动保存文件
(setq auto-save-default nil)



;; 开启全局 Company 补全
(global-company-mode t)

;; 最近打开的文件
(recentf-mode 1)
(setq recentf-max-menu-item 10)


;; 开启选中替换
(delete-selection-mode t)

;; show another bracket
(define-advice show-paren-function (:around (fn) fix-show-paren-funcion)
  (cond ((looking-at-p "\\s(") (funcall fn))
  (t (save-excursion
       (ignore-errors (backward-up-list))
       (funcall fn)))))
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; 开启括号匹配
(smartparens-global-mode t)
(sp-local-pair 'emacs-lisp-mode "'" nil :actions nil)

;; 开启hungry-delete-mode
(global-hungry-delete-mode)

;; 开启swiper
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)


(popwin-mode t)


;; js2-mode for javascript
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))

;; 自动加载外部修改过的文件
(global-auto-revert-mode 1)

(abbrev-mode t)

(define-abbrev-table 'global-abbrev-table '(
					    ("mt" "mutong")
					    ))

(defun indent-buffer ()
  "Indent the currently visited buffer."
  (interactive)
  (indent-region (point-min) (point-max)))

(defun indent-region-or-buffer ()
  "Indent a region if selected, otherwise the whole buffer. "
  (interactive)
  (save-excursion
    (if (region-active-p)
	(progn
	  (indent-region (region-beginning) (region-end))
	  (message "Indented selected region."))
      (progn
	(indent-buffer)
	(message "Indented buffer.")))))

(setq hippie-expand-try-functions-list '(try-expand-dabbrev
					 try-expand-dabbrev-all-buffers
					 try-expand-dabbrev-from-kill
					 try-complete-file-name-partially
					 try-complete-file-name
					 try-expand-all-abbrevs
					 try-expand-list
					 try-expand-line
					 try-complete-lisp-symbol-partially
					 try-complete-lisp-symbol))

(fset 'yes-or-no-p 'y-or-n-p)

(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)

(put 'dired-find-alternate-file 'disabled nil)

(require 'dired-x)

(setq dired-dwim-target t)

(set-language-environment "UTF-8")

(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))

(provide 'init-better-defaults)
