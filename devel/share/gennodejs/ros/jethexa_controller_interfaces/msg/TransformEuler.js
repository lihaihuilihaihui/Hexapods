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

class TransformEuler {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.translation = null;
      this.rotation = null;
      this.duration = null;
    }
    else {
      if (initObj.hasOwnProperty('translation')) {
        this.translation = initObj.translation
      }
      else {
        this.translation = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('rotation')) {
        this.rotation = initObj.rotation
      }
      else {
        this.rotation = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('duration')) {
        this.duration = initObj.duration
      }
      else {
        this.duration = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TransformEuler
    // Serialize message field [translation]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.translation, buffer, bufferOffset);
    // Serialize message field [rotation]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.rotation, buffer, bufferOffset);
    // Serialize message field [duration]
    bufferOffset = _serializer.float64(obj.duration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TransformEuler
    let len;
    let data = new TransformEuler(null);
    // Deserialize message field [translation]
    data.translation = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [rotation]
    data.rotation = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [duration]
    data.duration = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jethexa_controller_interfaces/TransformEuler';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2a328e1cf0b019f32b038faa157f5f4f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Vector3 translation
    geometry_msgs/Vector3 rotation
    float64 duration
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
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
    const resolved = new TransformEuler(null);
    if (msg.translation !== undefined) {
      resolved.translation = geometry_msgs.msg.Vector3.Resolve(msg.translation)
    }
    else {
      resolved.translation = new geometry_msgs.msg.Vector3()
    }

    if (msg.rotation !== undefined) {
      resolved.rotation = geometry_msgs.msg.Vector3.Resolve(msg.rotation)
    }
    else {
      resolved.rotation = new geometry_msgs.msg.Vector3()
    }

    if (msg.duration !== undefined) {
      resolved.duration = msg.duration;
    }
    else {
      resolved.duration = 0.0
    }

    return resolved;
    }
};

module.exports = TransformEuler;
