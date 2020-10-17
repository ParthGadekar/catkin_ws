;; Auto-generated. Do not edit!


(when (boundp 'pkg_task0::MoveSquare)
  (if (not (find-package "PKG_TASK0"))
    (make-package "PKG_TASK0"))
  (shadow 'MoveSquare (find-package "PKG_TASK0")))
(unless (find-package "PKG_TASK0::MOVESQUARE")
  (make-package "PKG_TASK0::MOVESQUARE"))
(unless (find-package "PKG_TASK0::MOVESQUAREREQUEST")
  (make-package "PKG_TASK0::MOVESQUAREREQUEST"))
(unless (find-package "PKG_TASK0::MOVESQUARERESPONSE")
  (make-package "PKG_TASK0::MOVESQUARERESPONSE"))

(in-package "ROS")





(defclass pkg_task0::MoveSquareRequest
  :super ros::object
  :slots (_s _r ))

(defmethod pkg_task0::MoveSquareRequest
  (:init
   (&key
    ((:s __s) 0.0)
    ((:r __r) 0)
    )
   (send-super :init)
   (setq _s (float __s))
   (setq _r (round __r))
   self)
  (:s
   (&optional __s)
   (if __s (setq _s __s)) _s)
  (:r
   (&optional __r)
   (if __r (setq _r __r)) _r)
  (:serialization-length
   ()
   (+
    ;; float32 _s
    4
    ;; int32 _r
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _s
       (sys::poke _s (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _r
       (write-long _r s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _s
     (setq _s (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _r
     (setq _r (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass pkg_task0::MoveSquareResponse
  :super ros::object
  :slots ())

(defmethod pkg_task0::MoveSquareResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass pkg_task0::MoveSquare
  :super ros::object
  :slots ())

(setf (get pkg_task0::MoveSquare :md5sum-) "af0b48fe9187ad9b8874f8bb3dcfb81d")
(setf (get pkg_task0::MoveSquare :datatype-) "pkg_task0/MoveSquare")
(setf (get pkg_task0::MoveSquare :request) pkg_task0::MoveSquareRequest)
(setf (get pkg_task0::MoveSquare :response) pkg_task0::MoveSquareResponse)

(defmethod pkg_task0::MoveSquareRequest
  (:response () (instance pkg_task0::MoveSquareResponse :init)))

(setf (get pkg_task0::MoveSquareRequest :md5sum-) "af0b48fe9187ad9b8874f8bb3dcfb81d")
(setf (get pkg_task0::MoveSquareRequest :datatype-) "pkg_task0/MoveSquareRequest")
(setf (get pkg_task0::MoveSquareRequest :definition-)
      "float32 s
int32 r
---

")

(setf (get pkg_task0::MoveSquareResponse :md5sum-) "af0b48fe9187ad9b8874f8bb3dcfb81d")
(setf (get pkg_task0::MoveSquareResponse :datatype-) "pkg_task0/MoveSquareResponse")
(setf (get pkg_task0::MoveSquareResponse :definition-)
      "float32 s
int32 r
---

")



(provide :pkg_task0/MoveSquare "af0b48fe9187ad9b8874f8bb3dcfb81d")


