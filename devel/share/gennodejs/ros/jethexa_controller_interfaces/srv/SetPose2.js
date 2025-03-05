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

class SetPose2Request {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose = null;
      this.duration = null;
      this.interrupt = null;
    }
    else {
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = [];
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
    // Serializes a message object of type SetPose2Request
    // Serialize message field [pose]
    // Serialize the length for message field [pose]
    bufferOffset = _serializer.uint32(obj.pose.length, buffer, bufferOffset);
    obj.pose.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point32.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [duration]
    bufferOffset = _serializer.float32(obj.duration, buffer, bufferOffset);
    // Serialize message field [interrupt]
    bufferOffset = _serializer.bool(obj.interrupt, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetPose2Request
    let len;
    let data = new SetPose2Request(null);
    // Deserialize message field [pose]
    // Deserialize array length for message field [pose]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pose = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pose[i] = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [duration]
    data.duration = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [interrupt]
    data.interrupt = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 12 * object.pose.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jethexa_controller_interfaces/SetPose2Request';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '77347ab8ab6b6ff8643459d887040520';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point32[] pose
    float32 duration
    bool interrupt
    
    ================================================================================
    MSG: geometry_msgs/Point32
    # This contains the position of a point in free space(with 32 bits of precision).
    # It is recommeded to use Point wherever possible instead of Point32.  
    # 
    # This recommendation is to promote interoperability.  
    #
    # This message is designed to take up less space when sending
    # lots of points at once, as in the case of a PointCloud.  
    
    float32 x
    float32 y
    float32 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetPose2Request(null);
    if (msg.pose !== undefined) {
      resolved.pose = new Array(msg.pose.length);
      for (let i = 0; i < resolved.pose.length; ++i) {
        resolved.pose[i] = geometry_msgs.msg.Point32.Resolve(msg.pose[i]);
      }
    }
    else {
      resolved.pose = []
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

class SetPose2Response {
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
    // Serializes a message object of type SetPose2Response
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetPose2Response
    let len;
    let data = new SetPose2Response(null);
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
    return 'jethexa_controller_interfaces/SetPose2Response';
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
    const resolved = new SetPose2Response(null);
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
  Request: SetPose2Request,
  Response: SetPose2Response,
  md5sum() { return '595abd8c189b2179c98ec4c165f7d2cd'; },
  datatype() { return 'jethexa_controller_interfaces/SetPose2'; }
};
