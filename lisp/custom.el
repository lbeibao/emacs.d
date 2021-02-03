(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-idle-delay 0.1)
 '(company-minimum-prefix-length 3)
 '(custom-safe-themes
   (quote
    ("cbd85ab34afb47003fa7f814a462c24affb1de81ebf172b78cb4e65186ba59d2" "ffba0482d3548c9494e84c1324d527f73ea4e43fff8dfd0e48faa8fc6d5c2bc7" default)))
 '(org-capture-templates
   (quote
    (("t" "Todo" entry
      (file+headline "~/beibaobook/src/gtd/inbox.org" "收件箱")
      "* TODO  %?  %i
"))) t)
 '(org-refile-targets
   (quote
    (("work_finish.org" :maxlevel . 1)
     ("work_flow.org" :maxlevel . 1)
     ("finish.org" :maxlevel . 1)
     ("someday.org" :maxlevel . 1)
     ("proj.org" :level . 1)
     ("task.org" :level . 1))))
 '(package-selected-packages
   (quote
    (acme-theme html5-schema company hungry-delete swiper counsel smartparens js2-mode nodejs-repl exec-path-from-shell monokai-theme solarized-theme popwin org-pomodoro)))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family #("微软雅黑" 0 4 (charset chinese-gbk)) :foundry "outline" :slant normal :weight normal :height 98 :width normal)))))
