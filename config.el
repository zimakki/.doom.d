;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Zi Makki"
      user-mail-address "zimakki@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 14 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)



;; make sure we are not watching too many files so that we are still fast!
;; MiPasa was watching
;; Compiling 417 files (.ex)
;; Compiling lib/mipasa/projects/runner.ex (it's taking more than 10s)
;; Generated mipasa app
;; Creating watchers for following 1 folders:
;;   /Users/zimakki/code/mipasa/mipasa/.elixir_ls/build/test/lib/mipasa/consolidated
;; Compile took 24719 milliseconds
;; [ElixirLS Dialyzer] Checking for stale beam files
;; [ElixirLS WorkspaceSymbols] Indexing...
;; [ElixirLS WorkspaceSymbols] Module discovery complete
;; [ElixirLS Dialyzer] Found 471 changed files in 586 milliseconds
;; [ElixirLS WorkspaceSymbols] 248 callbacks added to index
;; [ElixirLS WorkspaceSymbols] 1000 modules added to index
;; [ElixirLS WorkspaceSymbols] 543 types added to index
;; [ElixirLS Dialyzer] Analysis finished in 5311 milliseconds
;; Dialyzer analysis is up to date
;; [ElixirLS Dialyzer] Writing manifest...
;; [ElixirLS Dialyzer] Done writing manifest in 1417 milliseconds.
;; [ElixirLS WorkspaceSymbols] 12450 functions added to index
(after! lsp-mode
  (dolist (match
           '("[/\\\\].direnv$"
             "[/\\\\]node_modules$"
             "[/\\\\]deps"
             "[/\\\\]priv"
             "[/\\\\]build"
             "[/\\\\]test/tmp/files/datasets/"
             "[/\\\\]files/datasets/"
             "[/\\\\]_build"))
    (add-to-list 'lsp-file-watch-ignored match)))


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

