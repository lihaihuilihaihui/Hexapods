// Auto-generated. Do not edit!

// (in-package jethexa_controller_interfaces.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class PoseTransformRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.transform = null;
      this.duration = null;
      this.interrupt = null;
    }
    else {
      if (initObj.hasOwnProperty('transform')) {
        this.transform = initObj.transform
      }
      else {
        this.transform = new geometry_msgs.msg.Transform();
      }
      if (initObj.hasOwnProperty('duration')) {
        this.duration = initObj.duration
      }
      else {
        this.duration = 0.0;
      }
      if (initObj.hasOwnProperty('interrupt')) {
        this.interrupt = initObj.interrupt
      }
      else {
        this.interrupt = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PoseTransformRequest
    // Serialize message field [transform]
    bufferOffset = geometry_msgs.msg.Transform.serialize(obj.transform, buffer, bufferOffset);
    // Serialize message field [duration]
    bufferOffset = _serializer.float32(obj.duration, buffer, bufferOffset);
    // Serialize message field [interrupt]
    bufferOffset = _serializer.bool(obj.interrupt, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PoseTransformRequest
    let len;
    let data = new PoseTransformRequest(null);
    // Deserialize message field [transform]
    data.transform = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset);
    // Deserialize message field [duration]
    data.duration = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [interrupt]
    data.interrupt = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 61;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jethexa_controller_interfaces/PoseTransformRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8e56b69fe3e0752fee26148a691a534b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Transform transform
    float32 duration
    bool interrupt
    
    ================================================================================
    MSG: geometry_msgs/Transform
    # This represents the transform between two coordinate frames in free space.
    
    Vector3 translation
    Quaternion rotation
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PoseTransformRequest(null);
    if (msg.transform !== undefined) {
      resolved.transform = geometry_msgs.msg.Transform.Resolve(msg.transform)
    }
    else {
      resolved.transform = new geometry_msgs.msg.Transform()
    }

    if (msg.duration !== undefined) {
      resolved.duration = msg.duration;
    }
    else {
      resolved.duration = 0.0
    }

    if (msg.interrupt !== undefined) {
      resolved.interrupt = msg.interrupt;
    }
    else {
      resolved.interrupt = false
    }

    return resolved;
    }
};

class PoseTransformResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PoseTransformResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PoseTransformResponse
    let len;
    let data = new PoseTransformResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jethexa_controller_interfaces/PoseTransformResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '81f429c124a47a1dc0c7e925328a2d0c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PoseTransformResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: PoseTransformRequest,
  Response: PoseTransformResponse,
  md5sum() { return '4cd99d259c76651e37d160a72014e6f9'; },
  datatype() { return 'jethexa_controller_interfaces/PoseTransform'; }
};
