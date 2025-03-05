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

class State {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vin = null;
    }
    else {
      if (initObj.hasOwnProperty('vin')) {
        this.vin = initObj.vin
      }
      else {
        this.vin = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type State
    // Serialize message field [vin]
    bufferOffset = _serializer.float32(obj.vin, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type State
    let len;
    let data = new State(null);
    // Deserialize message field [vin]
    data.vin = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jethexa_controller_interfaces/State';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3baec60f92ec7ae546312dfac812d250';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 vin
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new State(null);
    if (msg.vin !== undefined) {
      resolved.vin = msg.vin;
    }
    else {
      resolved.vin = 0.0
    }

    return resolved;
    }
};

module.exports = State;
