// Auto-generated. Do not edit!

// (in-package movement.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class gpvtg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.track = null;
      this.speedkm = null;
    }
    else {
      if (initObj.hasOwnProperty('track')) {
        this.track = initObj.track
      }
      else {
        this.track = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('speedkm')) {
        this.speedkm = initObj.speedkm
      }
      else {
        this.speedkm = new std_msgs.msg.Float32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type gpvtg
    // Serialize message field [track]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.track, buffer, bufferOffset);
    // Serialize message field [speedkm]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.speedkm, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type gpvtg
    let len;
    let data = new gpvtg(null);
    // Deserialize message field [track]
    data.track = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [speedkm]
    data.speedkm = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'movement/gpvtg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '637f5b710e0df4c3f674b10916974d40';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Float32 track
    std_msgs/Float32 speedkm
    
    ================================================================================
    MSG: std_msgs/Float32
    float32 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new gpvtg(null);
    if (msg.track !== undefined) {
      resolved.track = std_msgs.msg.Float32.Resolve(msg.track)
    }
    else {
      resolved.track = new std_msgs.msg.Float32()
    }

    if (msg.speedkm !== undefined) {
      resolved.speedkm = std_msgs.msg.Float32.Resolve(msg.speedkm)
    }
    else {
      resolved.speedkm = new std_msgs.msg.Float32()
    }

    return resolved;
    }
};

module.exports = gpvtg;
