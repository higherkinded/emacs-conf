(defmacro msg/make (name from)
  `(defun ,name (fmt &rest objs)
     (apply #'message (format "[%s] %s" ,from fmt) objs)))
