// Auto-generated. Do not edit!

// (in-package hexapod_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class commands {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gaitFlag = null;
      this.gaitCycle = null;
      this.strideX = null;
      this.strideY = null;
      this.posX = null;
      this.posY = null;
      this.yaw = null;
      this.pitch = null;
      this.roll = null;
      this.bodyHeight = null;
      this.stepHeight = null;
    }
    else {
      if (initObj.hasOwnProperty('gaitFlag')) {
        this.gaitFlag = initObj.gaitFlag
      }
      else {
        this.gaitFlag = 0.0;
      }
      if (initObj.hasOwnProperty('gaitCycle')) {
        this.gaitCycle = initObj.gaitCycle
      }
      else {
        this.gaitCycle = 0.0;
      }
      if (initObj.hasOwnProperty('strideX')) {
        this.strideX = initObj.strideX
      }
      else {
        this.strideX = 0.0;
      }
      if (initObj.hasOwnProperty('strideY')) {
        this.strideY = initObj.strideY
      }
      else {
        this.strideY = 0.0;
      }
      if (initObj.hasOwnProperty('posX')) {
        this.posX = initObj.posX
      }
      else {
        this.posX = 0.0;
      }
      if (initObj.hasOwnProperty('posY')) {
        this.posY = initObj.posY
      }
      else {
        this.posY = 0.0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = 0.0;
      }
      if (initObj.hasOwnProperty('roll')) {
        this.roll = initObj.roll
      }
      else {
        this.roll = 0.0;
      }
      if (initObj.hasOwnProperty('bodyHeight')) {
        this.bodyHeight = initObj.bodyHeight
      }
      else {
        this.bodyHeight = 0.0;
      }
      if (initObj.hasOwnProperty('stepHeight')) {
        this.stepHeight = initObj.stepHeight
      }
      else {
        this.stepHeight = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type commands
    // Serialize message field [gaitFlag]
    bufferOffset = _serializer.float64(obj.gaitFlag, buffer, bufferOffset);
    // Serialize message field [gaitCycle]
    bufferOffset = _serializer.float64(obj.gaitCycle, buffer, bufferOffset);
    // Serialize message field [strideX]
    bufferOffset = _serializer.float64(obj.strideX, buffer, bufferOffset);
    // Serialize message field [strideY]
    bufferOffset = _serializer.float64(obj.strideY, buffer, bufferOffset);
    // Serialize message field [posX]
    bufferOffset = _serializer.float64(obj.posX, buffer, bufferOffset);
    // Serialize message field [posY]
    bufferOffset = _serializer.float64(obj.posY, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float64(obj.yaw, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float64(obj.pitch, buffer, bufferOffset);
    // Serialize message field [roll]
    bufferOffset = _serializer.float64(obj.roll, buffer, bufferOffset);
    // Serialize message field [bodyHeight]
    bufferOffset = _serializer.float64(obj.bodyHeight, buffer, bufferOffset);
    // Serialize message field [stepHeight]
    bufferOffset = _serializer.float64(obj.stepHeight, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type commands
    let len;
    let data = new commands(null);
    // Deserialize message field [gaitFlag]
    data.gaitFlag = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gaitCycle]
    data.gaitCycle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [strideX]
    data.strideX = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [strideY]
    data.strideY = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [posX]
    data.posX = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [posY]
    data.posY = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll]
    data.roll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [bodyHeight]
    data.bodyHeight = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [stepHeight]
    data.stepHeight = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 88;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hexapod_msg/commands';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1cf61961f72659f1f2317cb2c8fc565b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 gaitFlag #2-二步态 3-三步态 6-六步态 20-侧向二步态 30-侧向三步态 60-侧向六步态 7-手动步态 8-原地转向 9-自由 10-爬坡 11-越障 12-过沟 13-涉水 14-侧倾
    float64 gaitCycle
    float64 strideX
    float64 strideY
    float64 posX
    float64 posY
    float64 yaw
    float64 pitch
    float64 roll
    float64 bodyHeight
    float64 stepHeight
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new commands(null);
    if (msg.gaitFlag !== undefined) {
      resolved.gaitFlag = msg.gaitFlag;
    }
    else {
      resolved.gaitFlag = 0.0
    }

    if (msg.gaitCycle !== undefined) {
      resolved.gaitCycle = msg.gaitCycle;
    }
    else {
      resolved.gaitCycle = 0.0
    }

    if (msg.strideX !== undefined) {
      resolved.strideX = msg.strideX;
    }
    else {
      resolved.strideX = 0.0
    }

    if (msg.strideY !== undefined) {
      resolved.strideY = msg.strideY;
    }
    else {
      resolved.strideY = 0.0
    }

    if (msg.posX !== undefined) {
      resolved.posX = msg.posX;
    }
    else {
      resolved.posX = 0.0
    }

    if (msg.posY !== undefined) {
      resolved.posY = msg.posY;
    }
    else {
      resolved.posY = 0.0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = 0.0
    }

    if (msg.roll !== undefined) {
      resolved.roll = msg.roll;
    }
    else {
      resolved.roll = 0.0
    }

    if (msg.bodyHeight !== undefined) {
      resolved.bodyHeight = msg.bodyHeight;
    }
    else {
      resolved.bodyHeight = 0.0
    }

    if (msg.stepHeight !== undefined) {
      resolved.stepHeight = msg.stepHeight;
    }
    else {
      resolved.stepHeight = 0.0
    }

    return resolved;
    }
};

module.exports = commands;
