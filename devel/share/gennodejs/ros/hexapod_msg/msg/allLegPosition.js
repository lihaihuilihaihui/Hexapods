// Auto-generated. Do not edit!

// (in-package hexapod_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let footPosition = require('./footPosition.js');

//-----------------------------------------------------------

class allLegPosition {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position_LF = null;
      this.position_LM = null;
      this.position_LH = null;
      this.position_RF = null;
      this.position_RM = null;
      this.position_RH = null;
    }
    else {
      if (initObj.hasOwnProperty('position_LF')) {
        this.position_LF = initObj.position_LF
      }
      else {
        this.position_LF = new footPosition();
      }
      if (initObj.hasOwnProperty('position_LM')) {
        this.position_LM = initObj.position_LM
      }
      else {
        this.position_LM = new footPosition();
      }
      if (initObj.hasOwnProperty('position_LH')) {
        this.position_LH = initObj.position_LH
      }
      else {
        this.position_LH = new footPosition();
      }
      if (initObj.hasOwnProperty('position_RF')) {
        this.position_RF = initObj.position_RF
      }
      else {
        this.position_RF = new footPosition();
      }
      if (initObj.hasOwnProperty('position_RM')) {
        this.position_RM = initObj.position_RM
      }
      else {
        this.position_RM = new footPosition();
      }
      if (initObj.hasOwnProperty('position_RH')) {
        this.position_RH = initObj.position_RH
      }
      else {
        this.position_RH = new footPosition();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type allLegPosition
    // Serialize message field [position_LF]
    bufferOffset = footPosition.serialize(obj.position_LF, buffer, bufferOffset);
    // Serialize message field [position_LM]
    bufferOffset = footPosition.serialize(obj.position_LM, buffer, bufferOffset);
    // Serialize message field [position_LH]
    bufferOffset = footPosition.serialize(obj.position_LH, buffer, bufferOffset);
    // Serialize message field [position_RF]
    bufferOffset = footPosition.serialize(obj.position_RF, buffer, bufferOffset);
    // Serialize message field [position_RM]
    bufferOffset = footPosition.serialize(obj.position_RM, buffer, bufferOffset);
    // Serialize message field [position_RH]
    bufferOffset = footPosition.serialize(obj.position_RH, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type allLegPosition
    let len;
    let data = new allLegPosition(null);
    // Deserialize message field [position_LF]
    data.position_LF = footPosition.deserialize(buffer, bufferOffset);
    // Deserialize message field [position_LM]
    data.position_LM = footPosition.deserialize(buffer, bufferOffset);
    // Deserialize message field [position_LH]
    data.position_LH = footPosition.deserialize(buffer, bufferOffset);
    // Deserialize message field [position_RF]
    data.position_RF = footPosition.deserialize(buffer, bufferOffset);
    // Deserialize message field [position_RM]
    data.position_RM = footPosition.deserialize(buffer, bufferOffset);
    // Deserialize message field [position_RH]
    data.position_RH = footPosition.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 144;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hexapod_msg/allLegPosition';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'edafd0829c6c7701af53a3a96fc11013';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    hexapod_msg/footPosition position_LF
    hexapod_msg/footPosition position_LM
    hexapod_msg/footPosition position_LH
    hexapod_msg/footPosition position_RF
    hexapod_msg/footPosition position_RM
    hexapod_msg/footPosition position_RH
    
    ================================================================================
    MSG: hexapod_msg/footPosition
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new allLegPosition(null);
    if (msg.position_LF !== undefined) {
      resolved.position_LF = footPosition.Resolve(msg.position_LF)
    }
    else {
      resolved.position_LF = new footPosition()
    }

    if (msg.position_LM !== undefined) {
      resolved.position_LM = footPosition.Resolve(msg.position_LM)
    }
    else {
      resolved.position_LM = new footPosition()
    }

    if (msg.position_LH !== undefined) {
      resolved.position_LH = footPosition.Resolve(msg.position_LH)
    }
    else {
      resolved.position_LH = new footPosition()
    }

    if (msg.position_RF !== undefined) {
      resolved.position_RF = footPosition.Resolve(msg.position_RF)
    }
    else {
      resolved.position_RF = new footPosition()
    }

    if (msg.position_RM !== undefined) {
      resolved.position_RM = footPosition.Resolve(msg.position_RM)
    }
    else {
      resolved.position_RM = new footPosition()
    }

    if (msg.position_RH !== undefined) {
      resolved.position_RH = footPosition.Resolve(msg.position_RH)
    }
    else {
      resolved.position_RH = new footPosition()
    }

    return resolved;
    }
};

module.exports = allLegPosition;
