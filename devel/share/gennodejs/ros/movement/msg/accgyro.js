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

class accgyro {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.accx = null;
      this.accy = null;
      this.accz = null;
      this.gyrox = null;
      this.gyroy = null;
      this.gyroz = null;
    }
    else {
      if (initObj.hasOwnProperty('accx')) {
        this.accx = initObj.accx
      }
      else {
        this.accx = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('accy')) {
        this.accy = initObj.accy
      }
      else {
        this.accy = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('accz')) {
        this.accz = initObj.accz
      }
      else {
        this.accz = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('gyrox')) {
        this.gyrox = initObj.gyrox
      }
      else {
        this.gyrox = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('gyroy')) {
        this.gyroy = initObj.gyroy
      }
      else {
        this.gyroy = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('gyroz')) {
        this.gyroz = initObj.gyroz
      }
      else {
        this.gyroz = new std_msgs.msg.Float32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type accgyro
    // Serialize message field [accx]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.accx, buffer, bufferOffset);
    // Serialize message field [accy]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.accy, buffer, bufferOffset);
    // Serialize message field [accz]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.accz, buffer, bufferOffset);
    // Serialize message field [gyrox]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.gyrox, buffer, bufferOffset);
    // Serialize message field [gyroy]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.gyroy, buffer, bufferOffset);
    // Serialize message field [gyroz]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.gyroz, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type accgyro
    let len;
    let data = new accgyro(null);
    // Deserialize message field [accx]
    data.accx = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [accy]
    data.accy = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [accz]
    data.accz = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [gyrox]
    data.gyrox = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [gyroy]
    data.gyroy = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [gyroz]
    data.gyroz = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'movement/accgyro';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '38ea6143b493167fb723479a442558f8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Float32 accx
    std_msgs/Float32 accy
    std_msgs/Float32 accz
    std_msgs/Float32 gyrox
    std_msgs/Float32 gyroy
    std_msgs/Float32 gyroz
    
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
    const resolved = new accgyro(null);
    if (msg.accx !== undefined) {
      resolved.accx = std_msgs.msg.Float32.Resolve(msg.accx)
    }
    else {
      resolved.accx = new std_msgs.msg.Float32()
    }

    if (msg.accy !== undefined) {
      resolved.accy = std_msgs.msg.Float32.Resolve(msg.accy)
    }
    else {
      resolved.accy = new std_msgs.msg.Float32()
    }

    if (msg.accz !== undefined) {
      resolved.accz = std_msgs.msg.Float32.Resolve(msg.accz)
    }
    else {
      resolved.accz = new std_msgs.msg.Float32()
    }

    if (msg.gyrox !== undefined) {
      resolved.gyrox = std_msgs.msg.Float32.Resolve(msg.gyrox)
    }
    else {
      resolved.gyrox = new std_msgs.msg.Float32()
    }

    if (msg.gyroy !== undefined) {
      resolved.gyroy = std_msgs.msg.Float32.Resolve(msg.gyroy)
    }
    else {
      resolved.gyroy = new std_msgs.msg.Float32()
    }

    if (msg.gyroz !== undefined) {
      resolved.gyroz = std_msgs.msg.Float32.Resolve(msg.gyroz)
    }
    else {
      resolved.gyroz = new std_msgs.msg.Float32()
    }

    return resolved;
    }
};

module.exports = accgyro;
