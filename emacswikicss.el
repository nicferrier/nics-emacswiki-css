;;; Supply a CSS file for emacswiki

;;; Actually I'd really like to be able to do this interactively
;;; open a buffer and start an elnode server for just that file
;;; also configure an elnode server to always start serving a particular file

(elnode-app emacswikicss-dir)

(defun emacswikicss (httpcon)
  (elnode-send-file httpcon (concat emacswikicss-dir "nicferrier.css")))

(elnode-start 'emacswikicss :port 5009)

;;; emacswikicss.el ends here
