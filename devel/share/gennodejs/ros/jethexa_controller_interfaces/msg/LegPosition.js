// Auto-generated. Do not edit!

// (in-package jethexa_controller_interfaces.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class LegPosition {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.leg_id = null;
      this.duration = null;
      this.position = null;
    }
    else {
      if (initObj.hasOwnProperty('leg_id')) {
        this.leg_id = initObj.leg_id
      }
      else {
        this.leg_id = 0;
      }
      if (initObj.hasOwnProperty('duration')) {
        this.duration = initObj.duration
      }
      else {
        this.duration = 0.0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LegPosition
    // Serialize message field [leg_id]
    bufferOffset = _serializer.uint8(obj.leg_id, buffer, bufferOffset);
    // Serialize message field [duration]
    bufferOffset = _serializer.float32(obj.duration, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LegPosition
    let len;
    let data = new LegPosition(null);
    // Deserialize message field [leg_id]
    data.leg_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [duration]
    data.duration = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jethexa_controller_interfaces/LegPosition';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6950a434049c35d066c094e6cf6b87eb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 leg_id
    float32 duration
    geometry_msgs/Point position
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
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
    const resolved = new LegPosition(null);
    if (msg.leg_id !== undefined) {
      resolved.leg_id = msg.leg_id;
    }
    else {
      resolved.leg_id = 0
    }

    if (msg.duration !== undefined) {
      resolved.duration = msg.duration;
    }
    else {
      resolved.duration = 0.0
    }

    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Point.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

module.exports = LegPosition;
