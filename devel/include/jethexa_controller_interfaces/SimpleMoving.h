// Generated by gencpp from file jethexa_controller_interfaces/SimpleMoving.msg
// DO NOT EDIT!


#ifndef JETHEXA_CONTROLLER_INTERFACES_MESSAGE_SIMPLEMOVING_H
#define JETHEXA_CONTROLLER_INTERFACES_MESSAGE_SIMPLEMOVING_H

#include <ros/service_traits.h>


#include <jethexa_controller_interfaces/SimpleMovingRequest.h>
#include <jethexa_controller_interfaces/SimpleMovingResponse.h>


namespace jethexa_controller_interfaces
{

struct SimpleMoving
{

typedef SimpleMovingRequest Request;
typedef SimpleMovingResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SimpleMoving
} // namespace jethexa_controller_interfaces


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::jethexa_controller_interfaces::SimpleMoving > {
  static const char* value()
  {
    return "54ab04357ebe8bc7a124e7d0526d9213";
  }

  static const char* value(const ::jethexa_controller_interfaces::SimpleMoving&) { return value(); }
};

template<>
struct DataType< ::jethexa_controller_interfaces::SimpleMoving > {
  static const char* value()
  {
    return "jethexa_controller_interfaces/SimpleMoving";
  }

  static const char* value(const ::jethexa_controller_interfaces::SimpleMoving&) { return value(); }
};


// service_traits::MD5Sum< ::jethexa_controller_interfaces::SimpleMovingRequest> should match
// service_traits::MD5Sum< ::jethexa_controller_interfaces::SimpleMoving >
template<>
struct MD5Sum< ::jethexa_controller_interfaces::SimpleMovingRequest>
{
  static const char* value()
  {
    return MD5Sum< ::jethexa_controller_interfaces::SimpleMoving >::value();
  }
  static const char* value(const ::jethexa_controller_interfaces::SimpleMovingRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::jethexa_controller_interfaces::SimpleMovingRequest> should match
// service_traits::DataType< ::jethexa_controller_interfaces::SimpleMoving >
template<>
struct DataType< ::jethexa_controller_interfaces::SimpleMovingRequest>
{
  static const char* value()
  {
    return DataType< ::jethexa_controller_interfaces::SimpleMoving >::value();
  }
  static const char* value(const ::jethexa_controller_interfaces::SimpleMovingRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::jethexa_controller_interfaces::SimpleMovingResponse> should match
// service_traits::MD5Sum< ::jethexa_controller_interfaces::SimpleMoving >
template<>
struct MD5Sum< ::jethexa_controller_interfaces::SimpleMovingResponse>
{
  static const char* value()
  {
    return MD5Sum< ::jethexa_controller_interfaces::SimpleMoving >::value();
  }
  static const char* value(const ::jethexa_controller_interfaces::SimpleMovingResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::jethexa_controller_interfaces::SimpleMovingResponse> should match
// service_traits::DataType< ::jethexa_controller_interfaces::SimpleMoving >
template<>
struct DataType< ::jethexa_controller_interfaces::SimpleMovingResponse>
{
  static const char* value()
  {
    return DataType< ::jethexa_controller_interfaces::SimpleMoving >::value();
  }
  static const char* value(const ::jethexa_controller_interfaces::SimpleMovingResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // JETHEXA_CONTROLLER_INTERFACES_MESSAGE_SIMPLEMOVING_H
