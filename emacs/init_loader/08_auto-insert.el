;; ----------------------------------------
;; auto-insert
;; ----------------------------------------
(auto-insert-mode)
;; ----------------------------------------
;; ruby
;; \\.rb \\.ru Gemfile Rakefile \\.podspec
;; ----------------------------------------
(setq auto-insert-alist
      (append
       '(
         (("\\.rb" . "header")
          "Short description: "
          "#" n
          "#  " (file-name-nondirectory (buffer-file-name)) n
          "#  " str n
          "#" n
          "#  Created by " (user-full-name) " on " (format-time-string "%m/%d/%y") n
          "#  Copyright (c) " (substring (current-time-string) -4) " " (user-full-name) ". All rights reserved." n
          "#" n n _ ))
       auto-insert-alist))
(setq auto-insert-alist
      (append
       '(
         (("\\.ru" . "header")
          "Short description: "
          "#" n
          "#  " (file-name-nondirectory (buffer-file-name)) n
          "#  " str n
          "#" n
          "#  Created by " (user-full-name) " on " (format-time-string "%m/%d/%y") n
          "#  Copyright (c) " (substring (current-time-string) -4) " " (user-full-name) ". All rights reserved." n
          "#" n n _ ))
       auto-insert-alist))
(setq auto-insert-alist
      (append
       '(
         (("Gemfile" . "header")
          "Short description: "
          "#" n
          "#  " (file-name-nondirectory (buffer-file-name)) n
          "#  " str n
          "#" n
          "#  Created by " (user-full-name) " on " (format-time-string "%m/%d/%y") n
          "#  Copyright (c) " (substring (current-time-string) -4) " " (user-full-name) ". All rights reserved." n
          "#" n n _ ))
       auto-insert-alist))
(setq auto-insert-alist
      (append
       '(
         (("Rakefile" . "header")
          "Short description: "
          "#" n
          "#  " (file-name-nondirectory (buffer-file-name)) n
          "#  " str n
          "#" n
          "#  Created by " (user-full-name) " on " (format-time-string "%m/%d/%y") n
          "#  Copyright (c) " (substring (current-time-string) -4) " " (user-full-name) ". All rights reserved." n
          "#" n n _ ))
       auto-insert-alist))
(setq auto-insert-alist
      (append
       '(
         (("\\.podspec" . "header")
          "Short description: "
          "#" n
          "#  " (file-name-nondirectory (buffer-file-name)) n
          "#  " str n
          "#" n
          "#  Created by " (user-full-name) " on " (format-time-string "%m/%d/%y") n
          "#  Copyright (c) " (substring (current-time-string) -4) " " (user-full-name) ". All rights reserved." n
          "#" n n _ ))
       auto-insert-alist))
(setq auto-insert-alist
      (append
       '(
         (("\\.yml" . "header")
          "Short description: "
          "#" n
          "#  " (file-name-nondirectory (buffer-file-name)) n
          "#  " str n
          "#" n
          "#  Created by " (user-full-name) " on " (format-time-string "%m/%d/%y") n
          "#  Copyright (c) " (substring (current-time-string) -4) " " (user-full-name) ". All rights reserved." n
          "#" n n _ ))
       auto-insert-alist))
;; ----------------------------------------
;; erb
;; ----------------------------------------
(setq auto-insert-alist
      (append
       '(
         (("\\.erb" . "header")
          "Short description: "
          "<%#" n
          "#  " (file-name-nondirectory (buffer-file-name)) n
          "#  " str n
          "#" n
          "#  Created by " (user-full-name) " on " (format-time-string "%m/%d/%y") n
          "#  Copyright (c) " (substring (current-time-string) -4) " " (user-full-name) ". All rights reserved." n
          "%>" n n _ ))
       auto-insert-alist))
;; ----------------------------------------
;; haml
;; ----------------------------------------
(setq auto-insert-alist
      (append
       '(
         (("\\.haml" . "header")
          "Short description: "
          "-#" n
          "-#  " (file-name-nondirectory (buffer-file-name)) n
          "-#  " str n
          "-#" n
          "-#  Created by " (user-full-name) " on " (format-time-string "%m/%d/%y") n
          "-#  Copyright (c) " (substring (current-time-string) -4) " " (user-full-name) ". All rights reserved." n
          "-#" n n _ ))
       auto-insert-alist))
;; ----------------------------------------
;; javascript
;; ----------------------------------------
(setq auto-insert-alist
      (append
       '(
         (("\\.js" . "header")
          "Short description: "
          "//" n
          "//  " (file-name-nondirectory (buffer-file-name)) n
          "//  " str n
          "//" n
          "//  Created by " (user-full-name) " on " (format-time-string "%m/%d/%y") n
          "//  Copyright (c) " (substring (current-time-string) -4) " " (user-full-name) ". All rights reserved." n
          "//" n n _ ))
       auto-insert-alist))
;; ----------------------------------------
;; scss
;; ----------------------------------------
(setq auto-insert-alist
      (append
       '(
         (("\\.scss" . "header")
          "Short description: "
          "//" n
          "//  " (file-name-nondirectory (buffer-file-name)) n
          "//  " str n
          "//" n
          "//  Created by " (user-full-name) " on " (format-time-string "%m/%d/%y") n
          "//  Copyright (c) " (substring (current-time-string) -4) " " (user-full-name) ". All rights reserved." n
          "//" n n _ ))
       auto-insert-alist))
;; ----------------------------------------
;; coffeescript
;; ----------------------------------------
(setq auto-insert-alist
      (append
       '(
         (("\\.coffee" . "header")
          "Short description: "
          "#" n
          "#  " (file-name-nondirectory (buffer-file-name)) n
          "#  " str n
          "#" n
          "#  Created by " (user-full-name) " on " (format-time-string "%m/%d/%y") n
          "#  Copyright (c) " (substring (current-time-string) -4) " " (user-full-name) ". All rights reserved." n
          "#" n n _ ))
       auto-insert-alist))
;; ----------------------------------------
;; swift
;; ----------------------------------------
(setq auto-insert-alist
      (append
       '(
         (("\\.swift" . "header")
          "Short description: "
          "//" n
          "//  " (file-name-nondirectory (buffer-file-name)) n
          "//  " str n
          "//" n
          "//  Created by " (user-full-name) " on " (format-time-string "%m/%d/%y") n
          "//  Copyright (c) " (substring (current-time-string) -4) " " (user-full-name) ". All rights reserved." n
          "//" n n _ ))
       auto-insert-alist))
;; ----------------------------------------
;; typescript
;; ----------------------------------------
(setq auto-insert-alist
      (append
       '(
         (("\\.ts" . "header")
          "Short description: "
          "//" n
          "//  " (file-name-nondirectory (buffer-file-name)) n
          "//  " str n
          "//" n
          "//  Created by " (user-full-name) " on " (format-time-string "%m/%d/%y") n
          "//  Copyright (c) " (substring (current-time-string) -4) " " (user-full-name) ". All rights reserved." n
          "//" n n _ ))
       auto-insert-alist))
;; ----------------------------------------
;; vue
;; ----------------------------------------
(setq auto-insert-alist
      (append
       '(
         (("\\.vue" . "header")
          "Short description: "
          "<!--" n
          "//  " (file-name-nondirectory (buffer-file-name)) n
          "//  " str n
          "//" n
          "//  Created by " (user-full-name) " on " (format-time-string "%m/%d/%y") n
          "//  Copyright (c) " (substring (current-time-string) -4) " " (user-full-name) ". All rights reserved." n
          "-->" n n _ ))
       auto-insert-alist))
