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

class gpgga {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lat = null;
      this.long = null;
      this.hdop = null;
    }
    else {
      if (initObj.hasOwnProperty('lat')) {
        this.lat = initObj.lat
      }
      else {
        this.lat = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('long')) {
        this.long = initObj.long
      }
      else {
        this.long = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('hdop')) {
        this.hdop = initObj.hdop
      }
      else {
        this.hdop = new std_msgs.msg.Float32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type gpgga
    // Serialize message field [lat]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.lat, buffer, bufferOffset);
    // Serialize message field [long]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.long, buffer, bufferOffset);
    // Serialize message field [hdop]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.hdop, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type gpgga
    let len;
    let data = new gpgga(null);
    // Deserialize message field [lat]
    data.lat = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [long]
    data.long = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [hdop]
    data.hdop = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'movement/gpgga';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4fd45415d072c0bab0541d1fae62c5cc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Float32 lat
    std_msgs/Float32 long
    std_msgs/Float32 hdop
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
    const resolved = new gpgga(null);
    if (msg.lat !== undefined) {
      resolved.lat = std_msgs.msg.Float32.Resolve(msg.lat)
    }
    else {
      resolved.lat = new std_msgs.msg.Float32()
    }

    if (msg.long !== undefined) {
      resolved.long = std_msgs.msg.Float32.Resolve(msg.long)
    }
    else {
      resolved.long = new std_msgs.msg.Float32()
    }

    if (msg.hdop !== undefined) {
      resolved.hdop = std_msgs.msg.Float32.Resolve(msg.hdop)
    }
    else {
      resolved.hdop = new std_msgs.msg.Float32()
    }

    return resolved;
    }
};

module.exports = gpgga;
