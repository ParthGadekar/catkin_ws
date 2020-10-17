; Auto-generated. Do not edit!


(cl:in-package pkg_task0-srv)


;//! \htmlinclude MoveSquare-request.msg.html

(cl:defclass <MoveSquare-request> (roslisp-msg-protocol:ros-message)
  ((s
    :reader s
    :initarg :s
    :type cl:float
    :initform 0.0)
   (r
    :reader r
    :initarg :r
    :type cl:integer
    :initform 0))
)

(cl:defclass MoveSquare-request (<MoveSquare-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveSquare-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveSquare-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pkg_task0-srv:<MoveSquare-request> is deprecated: use pkg_task0-srv:MoveSquare-request instead.")))

(cl:ensure-generic-function 's-val :lambda-list '(m))
(cl:defmethod s-val ((m <MoveSquare-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg_task0-srv:s-val is deprecated.  Use pkg_task0-srv:s instead.")
  (s m))

(cl:ensure-generic-function 'r-val :lambda-list '(m))
(cl:defmethod r-val ((m <MoveSquare-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg_task0-srv:r-val is deprecated.  Use pkg_task0-srv:r instead.")
  (r m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveSquare-request>) ostream)
  "Serializes a message object of type '<MoveSquare-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 's))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'r)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveSquare-request>) istream)
  "Deserializes a message object of type '<MoveSquare-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 's) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'r) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveSquare-request>)))
  "Returns string type for a service object of type '<MoveSquare-request>"
  "pkg_task0/MoveSquareRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveSquare-request)))
  "Returns string type for a service object of type 'MoveSquare-request"
  "pkg_task0/MoveSquareRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveSquare-request>)))
  "Returns md5sum for a message object of type '<MoveSquare-request>"
  "af0b48fe9187ad9b8874f8bb3dcfb81d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveSquare-request)))
  "Returns md5sum for a message object of type 'MoveSquare-request"
  "af0b48fe9187ad9b8874f8bb3dcfb81d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveSquare-request>)))
  "Returns full string definition for message of type '<MoveSquare-request>"
  (cl:format cl:nil "float32 s~%int32 r~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveSquare-request)))
  "Returns full string definition for message of type 'MoveSquare-request"
  (cl:format cl:nil "float32 s~%int32 r~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveSquare-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveSquare-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveSquare-request
    (cl:cons ':s (s msg))
    (cl:cons ':r (r msg))
))
;//! \htmlinclude MoveSquare-response.msg.html

(cl:defclass <MoveSquare-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass MoveSquare-response (<MoveSquare-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveSquare-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveSquare-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pkg_task0-srv:<MoveSquare-response> is deprecated: use pkg_task0-srv:MoveSquare-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveSquare-response>) ostream)
  "Serializes a message object of type '<MoveSquare-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveSquare-response>) istream)
  "Deserializes a message object of type '<MoveSquare-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveSquare-response>)))
  "Returns string type for a service object of type '<MoveSquare-response>"
  "pkg_task0/MoveSquareResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveSquare-response)))
  "Returns string type for a service object of type 'MoveSquare-response"
  "pkg_task0/MoveSquareResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveSquare-response>)))
  "Returns md5sum for a message object of type '<MoveSquare-response>"
  "af0b48fe9187ad9b8874f8bb3dcfb81d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveSquare-response)))
  "Returns md5sum for a message object of type 'MoveSquare-response"
  "af0b48fe9187ad9b8874f8bb3dcfb81d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveSquare-response>)))
  "Returns full string definition for message of type '<MoveSquare-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveSquare-response)))
  "Returns full string definition for message of type 'MoveSquare-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveSquare-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveSquare-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveSquare-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveSquare)))
  'MoveSquare-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveSquare)))
  'MoveSquare-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveSquare)))
  "Returns string type for a service object of type '<MoveSquare>"
  "pkg_task0/MoveSquare")