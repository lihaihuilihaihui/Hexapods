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

class legAngle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Angle1 = null;
      this.Angle2 = null;
      this.Angle3 = null;
    }
    else {
      if (initObj.hasOwnProperty('Angle1')) {
        this.Angle1 = initObj.Angle1
      }
      else {
        this.Angle1 = 0.0;
      }
      if (initObj.hasOwnProperty('Angle2')) {
        this.Angle2 = initObj.Angle2
      }
      else {
        this.Angle2 = 0.0;
      }
      if (initObj.hasOwnProperty('Angle3')) {
        this.Angle3 = initObj.Angle3
      }
      else {
        this.Angle3 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type legAngle
    // Serialize message field [Angle1]
    bufferOffset = _serializer.float64(obj.Angle1, buffer, bufferOffset);
    // Serialize message field [Angle2]
    bufferOffset = _serializer.float64(obj.Angle2, buffer, bufferOffset);
    // Serialize message field [Angle3]
    bufferOffset = _serializer.float64(obj.Angle3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type legAngle
    let len;
    let data = new legAngle(null);
    // Deserialize message field [Angle1]
    data.Angle1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Angle2]
    data.Angle2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Angle3]
    data.Angle3 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hexapod_msg/legAngle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c136d8648a895dda5df63c2c29230290';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 Angle1
    float64 Angle2
    float64 Angle3
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new legAngle(null);
    if (msg.Angle1 !== undefined) {
      resolved.Angle1 = msg.Angle1;
    }
    else {
      resolved.Angle1 = 0.0
    }

    if (msg.Angle2 !== undefined) {
      resolved.Angle2 = msg.Angle2;
    }
    else {
      resolved.Angle2 = 0.0
    }

    if (msg.Angle3 !== undefined) {
      resolved.Angle3 = msg.Angle3;
    }
    else {
      resolved.Angle3 = 0.0
    }

    return resolved;
    }
};

module.exports = legAngle;
