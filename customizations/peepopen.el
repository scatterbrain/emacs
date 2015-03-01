;;; peep-open.el --- PeepOpen plugin for emacs.

;; Author: Irakli Gozalishivili <rfobic@gmail.com>
;; URL: http://github.com/gozala/peep-open-emacs
;; Version: 0.0.2

;;;###autoload
(defun peep-open ()
  "Uses external PeepOpen GUI Application to quickly jump to a file in the pwd."
  (interactive)
  (let ((root (substring (pwd) 10)))
    (shell-command-to-string
     (format "open 'peepopen://%s?editor=%s'"
             (expand-file-name root) (invocation-name)))))

(global-set-key (kbd "C-x t") 'peep-open)

(provide 'peep-open)

