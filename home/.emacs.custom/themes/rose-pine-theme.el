(unless (>= emacs-major-version 24)
  (error "rose-pine requires Emacs 24 or later."))

(deftheme rose-pine
  "Rose Pine By: Jack Baker - github.com/sniperslayerss")

(let (( base     "#232136")
      ( surface  "#2a273f")
      ( overlay  "#393552")
      ( muted    "#6e6a86")
      ( subtle   "#908caa")
      ( text     "#e0def4")
      ( love     "#eb6f92")
      ( gold     "#f6c177")
      ( rose     "#ea9a97")
      ( pine     "#3e8fb0")
      ( foam     "#9ccfd8")
      ( iris     "#c4a7e7")
      ( highlight_low  "#2a283e")
      ( highlight_med  "#44415a")
      ( highlight_high "#56526e"))

  (custom-theme-set-variables
   'rose-pine
   '(fringe-mode 6 nil (fringe))
   '(linum-format 'dynamic))

  (custom-theme-set-faces
   'rose-pine

   ;; font-lock
   `(font-lock-builtin-face ((t (:foreground ,pine))))
   `(font-lock-comment-face ((t (:foreground ,subtle))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,subtle))))
   `(font-lock-constant-face ((t (:foreground ,pine))))
   `(font-lock-doc-face ((t (:foreground ,gold))))
   `(font-lock-function-name-face ((t (:foreground ,text))))
   `(font-lock-keyword-face ((t (:foreground ,pine))))
   `(font-lock-preprocessor-face ((t (:foreground ,pine))))
   `(font-lock-string-face ((t (:foreground ,gold))))
   `(font-lock-type-face ((t (:foreground ,foam))))
   `(font-lock-variable-name-face ((t (:foreground ,text))))
   `(font-lock-warning-face ((t (:foreground ,gold))))
   `(font-lock-negation-char-face ((t (:foreground ,subtle))))

    ;; tree-sitter faces
    `(tree-sitter-hl-face:function.call ((t (:foreground ,rose))))
    `(tree-sitter-hl-face:punctuation ((t (:foreground ,subtle))))
    `(tree-sitter-hl-face:punctuation.delimiter ((t (:foreground ,subtle))))
    `(tree-sitter-hl-face:operator ((t (:foreground ,subtle))))
    `(tree-sitter-hl-face:type.builtin ((t (:foreground ,foam))))
    `(tree-sitter-hl-face:function.builtin ((t (:foreground ,pine))))
    `(tree-sitter-hl-face:constant ((t (:foreground ,gold))))
    `(tree-sitter-hl-face:property ((t (:foreground ,text))))
    `(tree-sitter-hl-face:constructor ((t (:foreground ,text))))
    `(tree-sitter-hl-face:number ((t (:foreground ,rose))))
    `(tree-sitter-hl-face:label ((t (:foreground ,iris))))

   ;; lsp
   `(lsp-face-highlight-textual ((t (:background ,highlight_med))))
   `(lsp-face-highlight-write ((t (:background ,highlight_med :foreground ,iris))))
   `(lsp-face-highlight-read ((t (:background ,highlight_med :foreground ,foam))))

   ;; general
   `(cursor ((t (:foreground ,base :background ,subtle))))
   `(default ((t (:foreground ,text :background ,base))))
   `(fringe ((t (:foreground ,text :background ,base))))
   `(minibuffer-prompt ((t (:foreground ,text ))))
   `(region ((t (:background ,overlay))))
   `(link ((t (:foreground ,gold :underline t))))
   `(link-visited ((t (:foreground ,gold :underline t))))
   `(show-paren-match ((t (:foreground ,pine :italic t :underline t))))
   `(show-paren-mismatch ((t (:foreground ,iris :underline t))))

   ;; xref
   `(xref-file-header ((t (:foreground ,rose :underline t))))
   `(xref-match ((t (:foreground ,love :weight bold))))

   ;; highlight
   `(hl-line ((t (:background ,overlay :foreground nil))))
   `(highlight-numbers-number ((t (:foreground ,gold))))
   `(isearch ((t (:background ,highlight_high))))
   `(lazy-highlight ((t (:background ,highlight_med))))

   ;; line-numbers
   `(line-number ((t (:inherit default :foreground ,subtle :background ,base))))
   `(line-number-current-line ((t (:inherit line-number :foreground ,text :background ,base))))

   ;; mode-line
   `(mode-line ((t (:foreground ,text :background ,base :box (:line-width (1 . 1) :color ,subtle)))))
   `(mode-line-active ((t (:foreground ,text :background ,base :box (:line-width (1 . 1) :color ,subtle)))))
   `(mode-line-inactive ((t (:foreground ,text :background ,base :box (:line-width (1 . 1) :color ,subtle)))))
   `(mode-line-buffer-id ((t (:background ,base :foreground ,text ))))
   `(mode-line-emphasis ((t (:background  ,base :foreground ,text))))
   `(mode-line-highlight ((t (:background ,base :foreground ,text :box nil))))

   ;; ido
   `(ido-first-match ((t (:foreground ,rose :bold nil))))
   `(ido-only-match ((t (:foreground ,gold :weight bold))))
   `(ido-subdir ((t (:foreground ,foam :weight bold))))

   ;; dired
   `(dired-directory ((t (:foreground ,foam :weight bold))))
   `(dired-ignored ((t (list :foreground ,rose
			     :inherit 'unspecified))))

   ;; Ivy / Counsel
   `(ivy-current-match ((t (:background ,highlight_high :foreground ,text :weight bold))))
   `(ivy-minibuffer-match-face-1 ((t (:background ,base :foreground ,subtle))))
   `(ivy-minibuffer-match-face-2 ((t (:background ,highlight_med :foreground ,rose :weight semi-bold))))
   `(ivy-minibuffer-match-face-3 ((t (:background ,highlight_med :foreground ,gold :weight semi-bold))))
   `(ivy-minibuffer-match-face-4 ((t (:background ,highlight_med :foreground ,foam :weight semi-bold))))
   `(ivy-virtual ((t (:foreground ,text))))
   `(ivy-subdir ((t (:foreground ,foam :weight bold))))
   `(ivy-action ((t (:foreground ,iris))))
   `(ivy-highlight-face ((t (:foreground ,rose :underline t))))

   ;; Projectile
   `(projectile-path-face ((t (:foreground ,foam))))
   `(projectile-project-name-face ((t (:foreground ,iris :weight bold))))
   `(projectile-dir-heading ((t (:foreground ,rose :weight bold))))
   `(projectile-file-name-face ((t (:foreground ,text))))

    ;; Company
    `(company-tooltip ((t (:background ,overlay :foreground ,text))))
    `(company-tooltip-selection ((t (:background ,highlight_med :foreground ,text))))
    `(company-tooltip-common ((t (:foreground ,gold :weight bold))))
    `(company-tooltip-common-selection ((t (:foreground ,gold :weight bold))))
    `(company-tooltip-annotation ((t (:foreground ,foam))))
    `(company-tooltip-annotation-selection ((t (:foreground ,foam))))
    `(company-scrollbar-bg ((t (:background ,surface))))
    `(company-scrollbar-fg ((t (:background ,highlight_high))))
    `(company-preview ((t (:background ,highlight_low :foreground ,subtle))))
    `(company-preview-common ((t (:foreground ,rose :background ,highlight_low :weight bold))))
    `(company-echo-common ((t (:foreground ,gold))))
   ))

;; Add to custom-theme-load-path
;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))


(provide-theme 'rose-pine)
