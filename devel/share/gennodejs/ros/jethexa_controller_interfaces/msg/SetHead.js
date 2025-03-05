// Auto-generated. Do not edit!

// (in-package jethexa_controller_interfaces.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Euler = require('./Euler.js');

//-----------------------------------------------------------

class SetHead {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rpy = null;
      this.duration = null;
    }
    else {
      if (initObj.hasOwnProperty('rpy')) {
        this.rpy = initObj.rpy
      }
      else {
        this.rpy = new Euler();
      }
      if (initObj.hasOwnProperty('duration')) {
        this.duration = initObj.duration
      }
      else {
        this.duration = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetHead
    // Serialize message field [rpy]
    bufferOffset = Euler.serialize(obj.rpy, buffer, bufferOffset);
    // Serialize message field [duration]
    bufferOffset = _serializer.float64(obj.duration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetHead
    let len;
    let data = new SetHead(null);
    // Deserialize message field [rpy]
    data.rpy = Euler.deserialize(buffer, bufferOffset);
    // Deserialize message field [duration]
    data.duration = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jethexa_controller_interfaces/SetHead';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '269ab51efb365ba39dc916c41e7ee5e2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Euler rpy
    float64 duration
    
    
    ================================================================================
    MSG: jethexa_controller_interfaces/Euler
    float64 roll
    float64 pitch
    float64 yaw
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetHead(null);
    if (msg.rpy !== undefined) {
      resolved.rpy = Euler.Resolve(msg.rpy)
    }
    else {
      resolved.rpy = new Euler()
    }

    if (msg.duration !== undefined) {
      resolved.duration = msg.duration;
    }
    else {
      resolved.duration = 0.0
    }

    return resolved;
    }
};

module.exports = SetHead;
