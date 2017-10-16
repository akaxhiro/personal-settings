(global-set-key "\C-h" 'backward-delete-char)

(set-language-environment "Japanese")
(set-terminal-coding-system 'utf-8)
(prefer-coding-system 'utf-8-unix)
(set-keyboard-coding-system 'utf-8)

(require 'mozc)  ; or (load-file "/path/to/mozc.el")
(setq default-input-method "japanese-mozc")
(setq mozc-candidate-style 'overlay)
