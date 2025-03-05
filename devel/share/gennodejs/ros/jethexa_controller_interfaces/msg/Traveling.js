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

class Traveling {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gait = null;
      this.stride = null;
      this.height = null;
      this.direction = null;
      this.rotation = null;
      this.time = null;
      this.steps = null;
      this.relative_height = null;
      this.interrupt = null;
    }
    else {
      if (initObj.hasOwnProperty('gait')) {
        this.gait = initObj.gait
      }
      else {
        this.gait = 0;
      }
      if (initObj.hasOwnProperty('stride')) {
        this.stride = initObj.stride
      }
      else {
        this.stride = 0.0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0.0;
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = 0.0;
      }
      if (initObj.hasOwnProperty('rotation')) {
        this.rotation = initObj.rotation
      }
      else {
        this.rotation = 0.0;
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0.0;
      }
      if (initObj.hasOwnProperty('steps')) {
        this.steps = initObj.steps
      }
      else {
        this.steps = 0;
      }
      if (initObj.hasOwnProperty('relative_height')) {
        this.relative_height = initObj.relative_height
      }
      else {
        this.relative_height = false;
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
    // Serializes a message object of type Traveling
    // Serialize message field [gait]
    bufferOffset = _serializer.int8(obj.gait, buffer, bufferOffset);
    // Serialize message field [stride]
    bufferOffset = _serializer.float32(obj.stride, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float32(obj.height, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = _serializer.float32(obj.direction, buffer, bufferOffset);
    // Serialize message field [rotation]
    bufferOffset = _serializer.float32(obj.rotation, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.float32(obj.time, buffer, bufferOffset);
    // Serialize message field [steps]
    bufferOffset = _serializer.uint32(obj.steps, buffer, bufferOffset);
    // Serialize message field [relative_height]
    bufferOffset = _serializer.bool(obj.relative_height, buffer, bufferOffset);
    // Serialize message field [interrupt]
    bufferOffset = _serializer.bool(obj.interrupt, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Traveling
    let len;
    let data = new Traveling(null);
    // Deserialize message field [gait]
    data.gait = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [stride]
    data.stride = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rotation]
    data.rotation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [steps]
    data.steps = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [relative_height]
    data.relative_height = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [interrupt]
    data.interrupt = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 27;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jethexa_controller_interfaces/Traveling';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6fc5a17f1d10ed31886179c4c279d006';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 gait
    float32 stride
    float32 height
    float32 direction
    float32 rotation
    float32 time
    uint32 steps
    bool relative_height
    bool interrupt
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Traveling(null);
    if (msg.gait !== undefined) {
      resolved.gait = msg.gait;
    }
    else {
      resolved.gait = 0
    }

    if (msg.stride !== undefined) {
      resolved.stride = msg.stride;
    }
    else {
      resolved.stride = 0.0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0.0
    }

    if (msg.direction !== undefined) {
      resolved.direction = msg.direction;
    }
    else {
      resolved.direction = 0.0
    }

    if (msg.rotation !== undefined) {
      resolved.rotation = msg.rotation;
    }
    else {
      resolved.rotation = 0.0
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0.0
    }

    if (msg.steps !== undefined) {
      resolved.steps = msg.steps;
    }
    else {
      resolved.steps = 0
    }

    if (msg.relative_height !== undefined) {
      resolved.relative_height = msg.relative_height;
    }
    else {
      resolved.relative_height = false
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

module.exports = Traveling;
