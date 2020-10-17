;; Auto-generated. Do not edit!


(when (boundp 'pkg_task0::MoveCircle)
  (if (not (find-package "PKG_TASK0"))
    (make-package "PKG_TASK0"))
  (shadow 'MoveCircle (find-package "PKG_TASK0")))
(unless (find-package "PKG_TASK0::MOVECIRCLE")
  (make-package "PKG_TASK0::MOVECIRCLE"))
(unless (find-package "PKG_TASK0::MOVECIRCLEREQUEST")
  (make-package "PKG_TASK0::MOVECIRCLEREQUEST"))
(unless (find-package "PKG_TASK0::MOVECIRCLERESPONSE")
  (make-package "PKG_TASK0::MOVECIRCLERESPONSE"))

(in-package "ROS")





(defclass pkg_task0::MoveCircleRequest
  :super ros::object
  :slots (_s _r ))

(defmethod pkg_task0::MoveCircleRequest
  (:init
   (&key
    ((:s __s) 0.0)
    ((:r __r) 0.0)
    )
   (send-super :init)
   (setq _s (float __s))
   (setq _r (float __r))
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
    ;; float32 _r
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _s
       (sys::poke _s (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _r
       (sys::poke _r (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _s
     (setq _s (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _r
     (setq _r (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass pkg_task0::MoveCircleResponse
  :super ros::object
  :slots ())

(defmethod pkg_task0::MoveCircleResponse
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

(defclass pkg_task0::MoveCircle
  :super ros::object
  :slots ())

(setf (get pkg_task0::MoveCircle :md5sum-) "6d766f6a2db01255c7ae96df4f8888c5")
(setf (get pkg_task0::MoveCircle :datatype-) "pkg_task0/MoveCircle")
(setf (get pkg_task0::MoveCircle :request) pkg_task0::MoveCircleRequest)
(setf (get pkg_task0::MoveCircle :response) pkg_task0::MoveCircleResponse)

(defmethod pkg_task0::MoveCircleRequest
  (:response () (instance pkg_task0::MoveCircleResponse :init)))

(setf (get pkg_task0::MoveCircleRequest :md5sum-) "6d766f6a2db01255c7ae96df4f8888c5")
(setf (get pkg_task0::MoveCircleRequest :datatype-) "pkg_task0/MoveCircleRequest")
(setf (get pkg_task0::MoveCircleRequest :definition-)
      "float32 s
float32 r
---

")

(setf (get pkg_task0::MoveCircleResponse :md5sum-) "6d766f6a2db01255c7ae96df4f8888c5")
(setf (get pkg_task0::MoveCircleResponse :datatype-) "pkg_task0/MoveCircleResponse")
(setf (get pkg_task0::MoveCircleResponse :definition-)
      "float32 s
float32 r
---

")



(provide :pkg_task0/MoveCircle "6d766f6a2db01255c7ae96df4f8888c5")


