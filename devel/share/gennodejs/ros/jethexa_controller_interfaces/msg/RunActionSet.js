// Auto-generated. Do not edit!

// (in-package jethexa_controller_interfaces.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RunActionSet {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action_path = null;
      this.repeat = null;
      this.interrupt = null;
      this.default_path = null;
    }
    else {
      if (initObj.hasOwnProperty('action_path')) {
        this.action_path = initObj.action_path
      }
      else {
        this.action_path = '';
      }
      if (initObj.hasOwnProperty('repeat')) {
        this.repeat = initObj.repeat
      }
      else {
        this.repeat = 0;
      }
      if (initObj.hasOwnProperty('interrupt')) {
        this.interrupt = initObj.interrupt
      }
      else {
        this.interrupt = false;
      }
      if (initObj.hasOwnProperty('default_path')) {
        this.default_path = initObj.default_path
      }
      else {
        this.default_path = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RunActionSet
    // Serialize message field [action_path]
    bufferOffset = _serializer.string(obj.action_path, buffer, bufferOffset);
    // Serialize message field [repeat]
    bufferOffset = _serializer.int32(obj.repeat, buffer, bufferOffset);
    // Serialize message field [interrupt]
    bufferOffset = _serializer.bool(obj.interrupt, buffer, bufferOffset);
    // Serialize message field [default_path]
    bufferOffset = _serializer.bool(obj.default_path, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RunActionSet
    let len;
    let data = new RunActionSet(null);
    // Deserialize message field [action_path]
    data.action_path = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [repeat]
    data.repeat = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [interrupt]
    data.interrupt = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [default_path]
    data.default_path = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.action_path);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jethexa_controller_interfaces/RunActionSet';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0956453a105a32316a59c54fb351ae16';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Request
    string action_path
    int32 repeat
    bool interrupt
    bool default_path
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RunActionSet(null);
    if (msg.action_path !== undefined) {
      resolved.action_path = msg.action_path;
    }
    else {
      resolved.action_path = ''
    }

    if (msg.repeat !== undefined) {
      resolved.repeat = msg.repeat;
    }
    else {
      resolved.repeat = 0
    }

    if (msg.interrupt !== undefined) {
      resolved.interrupt = msg.interrupt;
    }
    else {
      resolved.interrupt = false
    }

    if (msg.default_path !== undefined) {
      resolved.default_path = msg.default_path;
    }
    else {
      resolved.default_path = false
    }

    return resolved;
    }
};

module.exports = RunActionSet;
