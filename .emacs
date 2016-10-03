(add-to-list 'load-path "~/.emacs.d/elpa/multiple-cursors-20160719.216")
(setq backup-directory-alist `(("." . "~/.emacs.d/backup"))) ;perenos backupov
(setq redisplay-dont-pause t)  ;; лучшая отрисовка буфера
(setq ring-bell-function 'ignore) ;; отключить звуковой сигнал;
(setq x-select-enable-clipboard t)
(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)
(delete-selection-mode t)
;; Disable GUI components
(tooltip-mode      -1)
(menu-bar-mode     -1) ;; отключаем графическое меню
(tool-bar-mode     -1) ;; отключаем tool-bar
(require 'font-lock) ; highlight
(setq font-lock-maximum-decoration t)
;; otstupi
(setq-default tab-width          4) ;; ширина табуляции - 4 пробельных символа
(setq-default c-basic-offset     4)
(setq-default standart-indent    4) ;; стандартная ширина отступа - 4 пробельных символа
(setq-default lisp-body-indent   4) ;; сдвигать Lisp-выражения на 4 пробельных символа
(global-set-key (kbd "RET") 'newline-and-indent) ;; при нажатии Enter перевести каретку и сделать отступ
(setq lisp-indent-function  'common-lisp-indent-function)
(setq search-highlight        t)
(setq query-replace-highlight t)
(require 'cedet)
(require 'ede/generic)
(require 'semantic/ia)
(require 'hippie-exp)
(require 'package)
(require 'multiple-cursors)
(package-initialize)
(global-undo-tree-mode)
undo-tree-visualizer-diff
undo-tree-visualizer-timestamps
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(setq show-paren-delay 0)		;zaderzhka mezhdu podsvetkoy skobok
(show-paren-mode t)			;sami skobki
(global-linum-mode t)			;numering line
(setq linum-format "%4d \u2502 ")
(global-semanticdb-minor-mode 1) 
(require 'flymake)
(semantic-mode   t)
(global-ede-mode t)									   
(ede-enable-generic-projects)

(global-set-key (kbd "<C-up>") 'shrink-window)
(global-set-key (kbd "<C-down>") 'enlarge-window)
(global-set-key (kbd "<C-right>") 'shrink-window-horizontally)
(global-set-key (kbd "<C-left>") 'enlarge-window-horizontally)
(global-set-key (kbd "C-c k") 'mc/edit-lines)
(global-set-key (kbd "C-c /") 'mc/mark-pop)
(global-set-key (kbd "C-c l") 'mc/mark-next-word-like-this)
(global-set-key (kbd "C-c ;") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c '") 'mc/mark-all-like-this)

(add-hook 'java-mode-hook 'flymake-mode-on)
(defun my-java-flymake-init ()
	(list "javac" (list (flymake-init-create-temp-buffer-copy
						 'flymake-create-temp-with-folder-structure))))
(add-to-list 'flymake-allowed-file-name-masks '("\\.java$" my-java-flymake-init flymake-simple-cleanup))

;cedet
(add-to-list 'semantic-default-submodes 'global-semanticdb-minor-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-mru-bookmark-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-scheduler-mode)
;;(add-to-list 'semantic-default-submodes 'global-semantic-highlight-func-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-completions-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-show-parser-state-mode)

;; end

(defun ac-init()
	(require 'auto-complete-config)
	   (ac-config-default)
	   (setq ac-auto-start        t)
	   (setq ac-auto-show-menu    t)
	   (global-auto-complete-mode t)
	   (add-to-list 'ac-modes   'lisp-mode)
	   (add-to-list 'ac-sources 'ac-source-semantic) ;; искать автодополнения в CEDET
	   (add-to-list 'ac-sources 'ac-source-variables) ;; среди переменных
	   (add-to-list 'ac-sources 'ac-source-functions) ;; в названиях функций
	   (add-to-list 'ac-sources 'ac-source-dictionary) ;; в той папке где редактируемый буфер
	   (add-to-list 'ac-sources 'ac-source-words-in-all-buffer) ;; по всему буферу
	   (add-to-list 'ac-sources 'ac-source-files-in-current-dir))
;       (add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-20160827.649/dict"))

;; SLIME settings
(defun run-slime()
	(require 'slime)
	(require 'slime-autoloads)
	(setq slime-net-coding-system 'utf-8-unix)
	(slime-setup '(slime-fancy slime-asdf slime-indentation))) ;; загрузить основные дополнения Slime

;(require 'color-theme)
;;(eval-after-load "color-theme"
;;                   '(progn
;;                           (color-theme-initialize)
;;                                (color-theme-arjen)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (cyberpunk)))
 '(custom-safe-themes
   (quote
	("1fe69c814258b0ab1fb859421784fa909daa3add65af0b6bf1b8dd2706e0b4cd" "bfc2f24bd426fda50d4125446d406d5d565ffb7393159ef85018f6e639c8e560" "4e5c02f9bc01f9a35aa3bf74193068d7f54ae2c741598a41966b45a8bb8c450b" "eeca7f4a0e53bfb4964b6a067417fb1bef147bbe2ce15747ee6b557949a2dfd3" "23a6af69f969cdb4c5e3843fecf9d7a349656a5e9de9e613fc6c542503464433" "9d87815a53727906607a63ae593b131bf78abc0392b89c0e3bea01b0f0eddafa" "d9334fc59d9e7f51a225b3cf4082bfa10c5c3c9dd24f2ed8c89b08393006bc99" "e563858dba853aa2a279cd9138a4d9756dd40e6b8a039586d05c89be745c8566" "3f05741a65b2f4abf8e5f8b1a650ff3f3705802e88b8024b7ee28836c12f5801" "6e4cf1948d9e66e94a4e39484f202e3722c4751b52d25e878994e04f27fa1f9c" "f4b83e9fc5026e3ee3286a512fa8704191cdc7c4f23f366f8b21ad56c7ab2123" "429b29ea732644d16c585cf8ad93bab2d1f4b1da1a8573e57db6adf75e289dc0" "9dec5a094ce75a8122499474d6d4c53cd4a3d394e1212a26a757cc327a25efc2" "e3322fe3569efa2e28b270e667ae5dd33b031067e4bbb9e12409f344cf602448" "a1e7d93e2634f45301051360c66b0b817081cd2d432897ee80e0f7ce29d8add1" "43a6d1075eb7facc21ec9456280f0396dbeff1bfd4a97e1be2351061d496987c" "116e18df5473e7ea97e7ef35be393804c237b199fbdde0036881a5e0304f8032" "cb8dee269eb7ec0ef1defe4d99c7f465b0d39ad55da568ec19bfe70c84a97614" "b731744f6ca55a8f2d8d9b3925f7e1376ee58534969fef4f7fc340afa052dc82" "01a489129a058bdad677b264c3706aa0cfbdef1bcef1d14a73579780a942b7c9" "71ecffba18621354a1be303687f33b84788e13f40141580fa81e7840752d31bf" default)))
 '(package-selected-packages
   (quote
	(undo-tree auto-complete auto-complete-nxml multiple-cursors list-packages-ext xresources-theme cyberpunk-theme autumn-light-theme ample-zen-theme ample-theme alect-themes ahungry-theme abyss-theme)))
 '(xterm-mouse-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
