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

class LegJoints {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.coxa = null;
      this.femur = null;
      this.tibia = null;
      this.tarsus = null;
    }
    else {
      if (initObj.hasOwnProperty('coxa')) {
        this.coxa = initObj.coxa
      }
      else {
        this.coxa = 0.0;
      }
      if (initObj.hasOwnProperty('femur')) {
        this.femur = initObj.femur
      }
      else {
        this.femur = 0.0;
      }
      if (initObj.hasOwnProperty('tibia')) {
        this.tibia = initObj.tibia
      }
      else {
        this.tibia = 0.0;
      }
      if (initObj.hasOwnProperty('tarsus')) {
        this.tarsus = initObj.tarsus
      }
      else {
        this.tarsus = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LegJoints
    // Serialize message field [coxa]
    bufferOffset = _serializer.float64(obj.coxa, buffer, bufferOffset);
    // Serialize message field [femur]
    bufferOffset = _serializer.float64(obj.femur, buffer, bufferOffset);
    // Serialize message field [tibia]
    bufferOffset = _serializer.float64(obj.tibia, buffer, bufferOffset);
    // Serialize message field [tarsus]
    bufferOffset = _serializer.float64(obj.tarsus, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LegJoints
    let len;
    let data = new LegJoints(null);
    // Deserialize message field [coxa]
    data.coxa = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [femur]
    data.femur = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tibia]
    data.tibia = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tarsus]
    data.tarsus = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jethexa_controller_interfaces/LegJoints';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4281b159c18654b4920aa4a2c525621c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 coxa
    float64 femur
    float64 tibia
    float64 tarsus
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LegJoints(null);
    if (msg.coxa !== undefined) {
      resolved.coxa = msg.coxa;
    }
    else {
      resolved.coxa = 0.0
    }

    if (msg.femur !== undefined) {
      resolved.femur = msg.femur;
    }
    else {
      resolved.femur = 0.0
    }

    if (msg.tibia !== undefined) {
      resolved.tibia = msg.tibia;
    }
    else {
      resolved.tibia = 0.0
    }

    if (msg.tarsus !== undefined) {
      resolved.tarsus = msg.tarsus;
    }
    else {
      resolved.tarsus = 0.0
    }

    return resolved;
    }
};

module.exports = LegJoints;
