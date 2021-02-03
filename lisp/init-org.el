;; Org-mode 文本语法高亮
(with-eval-after-load 'org
  ;; 设置默认 Org Agenda 文件目录
  (setq org-agenda-files '("~/beibaobook/src/gtd"))
  (setq org-src-fontify-natively t)
  (setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/beibaobook/src/gtd/inbox.org" "收件箱")
	 "* TODO %i%?")))
  (setq org-todo-keywords '((sequence "TODO(t)" "STARTED(s)" "WAITING(w)" "|" "DONE(d)" "CANCELLED(c)")))

  (setq org-export-backends (quote (ascii html icalendar latex md)))
  )
(setq org-todo-keyword-faces
      '(("TODO" . org-warning)
	("STARTED" . "yellow")
        ("CANCELED" . (:foreground "blue" :weight bold))))

(provide 'init-org)
