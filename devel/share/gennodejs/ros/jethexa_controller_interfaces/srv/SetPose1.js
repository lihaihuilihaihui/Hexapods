// Auto-generated. Do not edit!

// (in-package jethexa_controller_interfaces.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetPose1Request {
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
        this.pose = '';
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
    // Serializes a message object of type SetPose1Request
    // Serialize message field [pose]
    bufferOffset = _serializer.string(obj.pose, buffer, bufferOffset);
    // Serialize message field [duration]
    bufferOffset = _serializer.float32(obj.duration, buffer, bufferOffset);
    // Serialize message field [interrupt]
    bufferOffset = _serializer.bool(obj.interrupt, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetPose1Request
    let len;
    let data = new SetPose1Request(null);
    // Deserialize message field [pose]
    data.pose = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [duration]
    data.duration = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [interrupt]
    data.interrupt = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.pose);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jethexa_controller_interfaces/SetPose1Request';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd7e5fe49e2e45c23da9d2a553fa85a81';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string pose
    float32 duration
    bool interrupt
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetPose1Request(null);
    if (msg.pose !== undefined) {
      resolved.pose = msg.pose;
    }
    else {
      resolved.pose = ''
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

class SetPose1Response {
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
    // Serializes a message object of type SetPose1Response
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetPose1Response
    let len;
    let data = new SetPose1Response(null);
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
    return 'jethexa_controller_interfaces/SetPose1Response';
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
    const resolved = new SetPose1Response(null);
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
  Request: SetPose1Request,
  Response: SetPose1Response,
  md5sum() { return '13028fae944c7d292e6d7a20d1f599d6'; },
  datatype() { return 'jethexa_controller_interfaces/SetPose1'; }
};
