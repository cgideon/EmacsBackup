;;; jest-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "jest" "jest.el" (0 0 0 0))
;;; Generated autoloads from jest.el
 (autoload 'jest-popup "jest" nil t)

(autoload 'jest "jest" "\
Run jest with ARGS.

With a prefix argument, allow editing.

\(fn &optional ARGS)" t nil)

(autoload 'jest-file "jest" "\
Run jest on FILE, using ARGS.

Additional ARGS are passed along to jest.
With a prefix argument, allow editing.

\(fn FILE &optional ARGS)" t nil)

(autoload 'jest-file-dwim "jest" "\
Run jest on FILE, intelligently finding associated test modules.

When run interactively, this tries to work sensibly using
the current file.

Additional ARGS are passed along to jest.
With a prefix argument, allow editing.

\(fn FILE &optional ARGS)" t nil)

(autoload 'jest-function "jest" "\
Run jest on the test function where pointer is located.

When pointer is not inside a test function jest is run on the whole file.

\(fn FILE TESTNAME &optional ARGS)" t nil)

(autoload 'jest-last-failed "jest" "\
Run jest, only executing previous test failures.

Additional ARGS are passed along to jest.
With a prefix argument, allow editing.

\(fn &optional ARGS)" t nil)

(autoload 'jest-repeat "jest" "\
Run jest with the same argument as the most recent invocation.

With a prefix ARG, allow editing." t nil)

(autoload 'jest-minor-mode "jest" "\
Minor mode to run jest-mode commands for compile and friends.

If called interactively, enable Jest minor mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "jest" '("jest-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; jest-autoloads.el ends here
