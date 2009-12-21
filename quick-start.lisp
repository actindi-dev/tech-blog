;; (pushnew :quick-start *features*)

#+quick-start
(progn
  (defparameter *site-files-directory* #p"/var/www/tech-blog/")
  (asdf:oos 'adsf:load-op :tech.actindi.net)

  ;; start
  (tech.actindi.net:start-tech.actindi.net)
  (load (merge-pathnames "migrate" *site-files-directory*))
  (load (merge-pathnames "blog" *site-files-directory*)))