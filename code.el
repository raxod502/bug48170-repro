(progn
  (ignore-errors (kill-buffer "bug-repro"))
  (with-current-buffer (get-buffer-create "bug-repro")
    (dotimes (i 200)
      (insert
       (propertize
        " "
        'display
        (create-image
         (expand-file-name
          (format "images/%d.png" (mod i 12)))
         nil nil
         :width 200 :margin 20))))
    (pop-to-buffer (current-buffer))))
