// Generated by gencpp from file pkg_task0/MoveSquareRequest.msg
// DO NOT EDIT!


#ifndef PKG_TASK0_MESSAGE_MOVESQUAREREQUEST_H
#define PKG_TASK0_MESSAGE_MOVESQUAREREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace pkg_task0
{
template <class ContainerAllocator>
struct MoveSquareRequest_
{
  typedef MoveSquareRequest_<ContainerAllocator> Type;

  MoveSquareRequest_()
    : s(0.0)
    , r(0)  {
    }
  MoveSquareRequest_(const ContainerAllocator& _alloc)
    : s(0.0)
    , r(0)  {
  (void)_alloc;
    }



   typedef float _s_type;
  _s_type s;

   typedef int32_t _r_type;
  _r_type r;





  typedef boost::shared_ptr< ::pkg_task0::MoveSquareRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pkg_task0::MoveSquareRequest_<ContainerAllocator> const> ConstPtr;

}; // struct MoveSquareRequest_

typedef ::pkg_task0::MoveSquareRequest_<std::allocator<void> > MoveSquareRequest;

typedef boost::shared_ptr< ::pkg_task0::MoveSquareRequest > MoveSquareRequestPtr;
typedef boost::shared_ptr< ::pkg_task0::MoveSquareRequest const> MoveSquareRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pkg_task0::MoveSquareRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pkg_task0::MoveSquareRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pkg_task0::MoveSquareRequest_<ContainerAllocator1> & lhs, const ::pkg_task0::MoveSquareRequest_<ContainerAllocator2> & rhs)
{
  return lhs.s == rhs.s &&
    lhs.r == rhs.r;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pkg_task0::MoveSquareRequest_<ContainerAllocator1> & lhs, const ::pkg_task0::MoveSquareRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pkg_task0

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::pkg_task0::MoveSquareRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pkg_task0::MoveSquareRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pkg_task0::MoveSquareRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pkg_task0::MoveSquareRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pkg_task0::MoveSquareRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pkg_task0::MoveSquareRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pkg_task0::MoveSquareRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "af0b48fe9187ad9b8874f8bb3dcfb81d";
  }

  static const char* value(const ::pkg_task0::MoveSquareRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xaf0b48fe9187ad9bULL;
  static const uint64_t static_value2 = 0x8874f8bb3dcfb81dULL;
};

template<class ContainerAllocator>
struct DataType< ::pkg_task0::MoveSquareRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pkg_task0/MoveSquareRequest";
  }

  static const char* value(const ::pkg_task0::MoveSquareRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pkg_task0::MoveSquareRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 s\n"
"int32 r\n"
;
  }

  static const char* value(const ::pkg_task0::MoveSquareRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pkg_task0::MoveSquareRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.s);
      stream.next(m.r);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MoveSquareRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pkg_task0::MoveSquareRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pkg_task0::MoveSquareRequest_<ContainerAllocator>& v)
  {
    s << indent << "s: ";
    Printer<float>::stream(s, indent + "  ", v.s);
    s << indent << "r: ";
    Printer<int32_t>::stream(s, indent + "  ", v.r);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PKG_TASK0_MESSAGE_MOVESQUAREREQUEST_H
