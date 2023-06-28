json-modeは以下のバグがある。
https://github.com/joshwnj/json-mode/issues/72
そのため手動で以下の修正をしてrecompileしている。
https://github.com/joshwnj/json-mode/pull/73

```
M-x byte-recompile-directory RET ~/.emacs.d/elpa/
```
