(defun cider-load-buffers ()
  (dolist (file-name (remove nil (mapcar #'buffer-file-name (buffer-list))))
    (cider-load-file file-name)))

(defun cider-eval-buffers-and-run-tests ()
  (interactive)
  (cider-load-buffers)
  (cider-test-run-tests nil))

(global-set-key (kbd "C-c .") 'cider-eval-buffers-and-run-tests)
