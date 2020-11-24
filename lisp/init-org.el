;; Org-mode 文本语法高亮
(with-eval-after-load 'org
  ;; 设置默认 Org Agenda 文件目录
  (setq org-agenda-files '("~/Dropbox/gtd"))
  (setq org-src-fontify-natively t)
  (setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/Dropbox/gtd/inbox.org" "收件箱")
	 "* TODO [#B] %?\n  %i\n"
	 :empty-lines 1)))
  (setq org-export-backends (quote (ascii html icalendar latex md)))
  )



(provide 'init-org)
