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

class bodyPos {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.posX = null;
      this.posY = null;
      this.posZ = null;
      this.pitch = null;
      this.roll = null;
      this.yaw = null;
      this.body_posX = null;
      this.body_posY = null;
      this.body_posZ = null;
    }
    else {
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
      if (initObj.hasOwnProperty('posZ')) {
        this.posZ = initObj.posZ
      }
      else {
        this.posZ = 0.0;
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
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('body_posX')) {
        this.body_posX = initObj.body_posX
      }
      else {
        this.body_posX = 0.0;
      }
      if (initObj.hasOwnProperty('body_posY')) {
        this.body_posY = initObj.body_posY
      }
      else {
        this.body_posY = 0.0;
      }
      if (initObj.hasOwnProperty('body_posZ')) {
        this.body_posZ = initObj.body_posZ
      }
      else {
        this.body_posZ = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type bodyPos
    // Serialize message field [posX]
    bufferOffset = _serializer.float64(obj.posX, buffer, bufferOffset);
    // Serialize message field [posY]
    bufferOffset = _serializer.float64(obj.posY, buffer, bufferOffset);
    // Serialize message field [posZ]
    bufferOffset = _serializer.float64(obj.posZ, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float64(obj.pitch, buffer, bufferOffset);
    // Serialize message field [roll]
    bufferOffset = _serializer.float64(obj.roll, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float64(obj.yaw, buffer, bufferOffset);
    // Serialize message field [body_posX]
    bufferOffset = _serializer.float64(obj.body_posX, buffer, bufferOffset);
    // Serialize message field [body_posY]
    bufferOffset = _serializer.float64(obj.body_posY, buffer, bufferOffset);
    // Serialize message field [body_posZ]
    bufferOffset = _serializer.float64(obj.body_posZ, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type bodyPos
    let len;
    let data = new bodyPos(null);
    // Deserialize message field [posX]
    data.posX = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [posY]
    data.posY = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [posZ]
    data.posZ = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll]
    data.roll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [body_posX]
    data.body_posX = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [body_posY]
    data.body_posY = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [body_posZ]
    data.body_posZ = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 72;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hexapod_msg/bodyPos';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '167df86e3204d5ea278732d95064ab3b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 posX
    float64 posY
    float64 posZ
    float64 pitch
    float64 roll
    float64 yaw
    float64 body_posX
    float64 body_posY
    float64 body_posZ
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new bodyPos(null);
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

    if (msg.posZ !== undefined) {
      resolved.posZ = msg.posZ;
    }
    else {
      resolved.posZ = 0.0
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

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.body_posX !== undefined) {
      resolved.body_posX = msg.body_posX;
    }
    else {
      resolved.body_posX = 0.0
    }

    if (msg.body_posY !== undefined) {
      resolved.body_posY = msg.body_posY;
    }
    else {
      resolved.body_posY = 0.0
    }

    if (msg.body_posZ !== undefined) {
      resolved.body_posZ = msg.body_posZ;
    }
    else {
      resolved.body_posZ = 0.0
    }

    return resolved;
    }
};

module.exports = bodyPos;
