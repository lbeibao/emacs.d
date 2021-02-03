;; 开启全屏
(setq initial-frame-alist (quote ((fullscreen . maximized))))
;; 设置窗口位置
(set-frame-position (selected-frame) 2 10)
;; 设置GUI窗口的尺寸
;; (set-frame-width (selected-frame) 100)
;; 关闭启动帮助画面
(setq inhibit-splash-screen t)
;; 关闭工具栏，tool-bar-mode 即为一个 Minor Mode
(tool-bar-mode -1)
;; 关闭文件滑动控件
(scroll-bar-mode -1)
;; 高亮当前行
(global-hl-line-mode 1)
;; 显示行号
;;(require 'linum)
;;(setq linum-format "%6d")
;;(global-linum-mode 1)
(add-hook 'prog-mode-hook 'linum-mode)


;; 设置主题
(load-theme 'solarized-gruvbox-dark 1)

;; 设置光标样式
(setq-default cursor-type 'bar)

(provide 'init-ui)
