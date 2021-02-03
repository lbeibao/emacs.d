(package-initialize)
(add-to-list 'load-path "~/.emacs.d/lisp/")


;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;; 快速打开gtd文件
(defun open-task-file()
  (interactive)
  (find-file "~/beibaobook/src/gtd/task.org"))
;; 快速打开工作gtd文件
(defun open-work-flow-file()
  (interactive)
  (find-file "~/beibaobook/src/gtd/work_flow.org"))
;; 快速打开
(defun open-inbox-file()
  (interactive)
  (find-file "~/beibaobook/src/gtd/inbox.org"))
(require 'init-packages)
(require 'init-ui)
(require 'init-better-defaults)
(require 'init-pyim)
(require 'init-org)
(require 'init-keybindings)
(require 'org-pomodoro)
(require 'jekyll)

(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))

(load-file custom-file)

