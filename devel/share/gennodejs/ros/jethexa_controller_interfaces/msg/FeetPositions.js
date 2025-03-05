// Auto-generated. Do not edit!

// (in-package jethexa_controller_interfaces.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Pose = require('./Pose.js');

//-----------------------------------------------------------

class FeetPositions {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.foot = null;
    }
    else {
      if (initObj.hasOwnProperty('foot')) {
        this.foot = initObj.foot
      }
      else {
        this.foot = new Array(6).fill(new Pose());
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FeetPositions
    // Check that the constant length array field [foot] has the right length
    if (obj.foot.length !== 6) {
      throw new Error('Unable to serialize array field foot - length must be 6')
    }
    // Serialize message field [foot]
    obj.foot.forEach((val) => {
      bufferOffset = Pose.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FeetPositions
    let len;
    let data = new FeetPositions(null);
    // Deserialize message field [foot]
    len = 6;
    data.foot = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.foot[i] = Pose.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jethexa_controller_interfaces/FeetPositions';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd12724c3b1519cfb275eb5b1d0e25de2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Pose[6] foot
    
    ================================================================================
    MSG: jethexa_controller_interfaces/Pose
    geometry_msgs/Point position
    Euler orientation
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: jethexa_controller_interfaces/Euler
    float64 roll
    float64 pitch
    float64 yaw
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FeetPositions(null);
    if (msg.foot !== undefined) {
      resolved.foot = new Array(6)
      for (let i = 0; i < resolved.foot.length; ++i) {
        if (msg.foot.length > i) {
          resolved.foot[i] = Pose.Resolve(msg.foot[i]);
        }
        else {
          resolved.foot[i] = new Pose();
        }
      }
    }
    else {
      resolved.foot = new Array(6).fill(new Pose())
    }

    return resolved;
    }
};

module.exports = FeetPositions;
