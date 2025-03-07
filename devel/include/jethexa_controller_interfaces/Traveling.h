// Generated by gencpp from file jethexa_controller_interfaces/Traveling.msg
// DO NOT EDIT!


#ifndef JETHEXA_CONTROLLER_INTERFACES_MESSAGE_TRAVELING_H
#define JETHEXA_CONTROLLER_INTERFACES_MESSAGE_TRAVELING_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace jethexa_controller_interfaces
{
template <class ContainerAllocator>
struct Traveling_
{
  typedef Traveling_<ContainerAllocator> Type;

  Traveling_()
    : gait(0)
    , stride(0.0)
    , height(0.0)
    , direction(0.0)
    , rotation(0.0)
    , time(0.0)
    , steps(0)
    , relative_height(false)
    , interrupt(false)  {
    }
  Traveling_(const ContainerAllocator& _alloc)
    : gait(0)
    , stride(0.0)
    , height(0.0)
    , direction(0.0)
    , rotation(0.0)
    , time(0.0)
    , steps(0)
    , relative_height(false)
    , interrupt(false)  {
  (void)_alloc;
    }



   typedef int8_t _gait_type;
  _gait_type gait;

   typedef float _stride_type;
  _stride_type stride;

   typedef float _height_type;
  _height_type height;

   typedef float _direction_type;
  _direction_type direction;

   typedef float _rotation_type;
  _rotation_type rotation;

   typedef float _time_type;
  _time_type time;

   typedef uint32_t _steps_type;
  _steps_type steps;

   typedef uint8_t _relative_height_type;
  _relative_height_type relative_height;

   typedef uint8_t _interrupt_type;
  _interrupt_type interrupt;





  typedef boost::shared_ptr< ::jethexa_controller_interfaces::Traveling_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::jethexa_controller_interfaces::Traveling_<ContainerAllocator> const> ConstPtr;

}; // struct Traveling_

typedef ::jethexa_controller_interfaces::Traveling_<std::allocator<void> > Traveling;

typedef boost::shared_ptr< ::jethexa_controller_interfaces::Traveling > TravelingPtr;
typedef boost::shared_ptr< ::jethexa_controller_interfaces::Traveling const> TravelingConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::jethexa_controller_interfaces::Traveling_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::jethexa_controller_interfaces::Traveling_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::jethexa_controller_interfaces::Traveling_<ContainerAllocator1> & lhs, const ::jethexa_controller_interfaces::Traveling_<ContainerAllocator2> & rhs)
{
  return lhs.gait == rhs.gait &&
    lhs.stride == rhs.stride &&
    lhs.height == rhs.height &&
    lhs.direction == rhs.direction &&
    lhs.rotation == rhs.rotation &&
    lhs.time == rhs.time &&
    lhs.steps == rhs.steps &&
    lhs.relative_height == rhs.relative_height &&
    lhs.interrupt == rhs.interrupt;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::jethexa_controller_interfaces::Traveling_<ContainerAllocator1> & lhs, const ::jethexa_controller_interfaces::Traveling_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace jethexa_controller_interfaces

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::jethexa_controller_interfaces::Traveling_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::jethexa_controller_interfaces::Traveling_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::jethexa_controller_interfaces::Traveling_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::jethexa_controller_interfaces::Traveling_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::jethexa_controller_interfaces::Traveling_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::jethexa_controller_interfaces::Traveling_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::jethexa_controller_interfaces::Traveling_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6fc5a17f1d10ed31886179c4c279d006";
  }

  static const char* value(const ::jethexa_controller_interfaces::Traveling_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6fc5a17f1d10ed31ULL;
  static const uint64_t static_value2 = 0x886179c4c279d006ULL;
};

template<class ContainerAllocator>
struct DataType< ::jethexa_controller_interfaces::Traveling_<ContainerAllocator> >
{
  static const char* value()
  {
    return "jethexa_controller_interfaces/Traveling";
  }

  static const char* value(const ::jethexa_controller_interfaces::Traveling_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::jethexa_controller_interfaces::Traveling_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 gait\n"
"float32 stride\n"
"float32 height\n"
"float32 direction\n"
"float32 rotation\n"
"float32 time\n"
"uint32 steps\n"
"bool relative_height\n"
"bool interrupt\n"
;
  }

  static const char* value(const ::jethexa_controller_interfaces::Traveling_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::jethexa_controller_interfaces::Traveling_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.gait);
      stream.next(m.stride);
      stream.next(m.height);
      stream.next(m.direction);
      stream.next(m.rotation);
      stream.next(m.time);
      stream.next(m.steps);
      stream.next(m.relative_height);
      stream.next(m.interrupt);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Traveling_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::jethexa_controller_interfaces::Traveling_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::jethexa_controller_interfaces::Traveling_<ContainerAllocator>& v)
  {
    s << indent << "gait: ";
    Printer<int8_t>::stream(s, indent + "  ", v.gait);
    s << indent << "stride: ";
    Printer<float>::stream(s, indent + "  ", v.stride);
    s << indent << "height: ";
    Printer<float>::stream(s, indent + "  ", v.height);
    s << indent << "direction: ";
    Printer<float>::stream(s, indent + "  ", v.direction);
    s << indent << "rotation: ";
    Printer<float>::stream(s, indent + "  ", v.rotation);
    s << indent << "time: ";
    Printer<float>::stream(s, indent + "  ", v.time);
    s << indent << "steps: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.steps);
    s << indent << "relative_height: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.relative_height);
    s << indent << "interrupt: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.interrupt);
  }
};

} // namespace message_operations
} // namespace ros

#endif // JETHEXA_CONTROLLER_INTERFACES_MESSAGE_TRAVELING_H
