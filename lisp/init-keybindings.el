;; 将函数 open-init-file 绑定到 <f2> 键上
(global-set-key (kbd "<f2>") 'open-init-file)
;; 将打开工作文件绑定到F3
(global-set-key (kbd "<f3>") 'open-task-file)
;; 将函数 open-inbox-file 绑定到 F4 键上
(global-set-key (kbd "<f4>") 'open-inbox-file)
(global-set-key (kbd "C-c r") 'org-capture)

(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;; enable this if you want `swiper' to use it
;; (setq search-default-mode #'char-fold-to-regexp)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)
(global-set-key (kbd "C-c g") 'counsel-git)
;;(global-set-key (kbd "C-h o") 'counsel-describe-symbol)
;;(global-set-key (kbd "C-h l") 'counsel-find-library)
;;(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
;;(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
;;(global-set-key (kbd "C-c j") 'counsel-git-grep)
;;(global-set-key (kbd "C-c k") 'counsel-ag)
;;(global-set-key (kbd "C-x l") 'counsel-locate)
;;(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
;;(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)

;; 设置 org-agenda 打开快捷键
(global-set-key (kbd "C-c a") 'org-agenda)

(global-set-key (kbd "C-M-\\") 'indent-region-or-buffer)

(global-set-key (kbd "s-/") 'hippie-expand)

(global-set-key (kbd "C-w") 'backward-kill-word)

(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

(provide 'init-keybindings)
