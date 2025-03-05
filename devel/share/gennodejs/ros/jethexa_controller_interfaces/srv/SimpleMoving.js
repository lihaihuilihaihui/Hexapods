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

class SimpleMovingRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.moving = null;
      this.repeat = null;
      this.interrupt = null;
    }
    else {
      if (initObj.hasOwnProperty('moving')) {
        this.moving = initObj.moving
      }
      else {
        this.moving = 0;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SimpleMovingRequest
    // Serialize message field [moving]
    bufferOffset = _serializer.int8(obj.moving, buffer, bufferOffset);
    // Serialize message field [repeat]
    bufferOffset = _serializer.int32(obj.repeat, buffer, bufferOffset);
    // Serialize message field [interrupt]
    bufferOffset = _serializer.bool(obj.interrupt, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SimpleMovingRequest
    let len;
    let data = new SimpleMovingRequest(null);
    // Deserialize message field [moving]
    data.moving = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [repeat]
    data.repeat = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [interrupt]
    data.interrupt = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jethexa_controller_interfaces/SimpleMovingRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'db06c9c562e66b75f951c34e4b2ce671';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Request
    int8 moving
    int32   repeat
    bool interrupt
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SimpleMovingRequest(null);
    if (msg.moving !== undefined) {
      resolved.moving = msg.moving;
    }
    else {
      resolved.moving = 0
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

    return resolved;
    }
};

class SimpleMovingResponse {
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
    // Serializes a message object of type SimpleMovingResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SimpleMovingResponse
    let len;
    let data = new SimpleMovingResponse(null);
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
    return 'jethexa_controller_interfaces/SimpleMovingResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '81f429c124a47a1dc0c7e925328a2d0c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Result
    int32 result
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SimpleMovingResponse(null);
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
  Request: SimpleMovingRequest,
  Response: SimpleMovingResponse,
  md5sum() { return '54ab04357ebe8bc7a124e7d0526d9213'; },
  datatype() { return 'jethexa_controller_interfaces/SimpleMoving'; }
};
