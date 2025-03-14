# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from hexapod_msg/commands.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class commands(genpy.Message):
  _md5sum = "1cf61961f72659f1f2317cb2c8fc565b"
  _type = "hexapod_msg/commands"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float64 gaitFlag #2-二步态 3-三步态 6-六步态 20-侧向二步态 30-侧向三步态 60-侧向六步态 7-手动步态 8-原地转向 9-自由 10-爬坡 11-越障 12-过沟 13-涉水 14-侧倾
float64 gaitCycle
float64 strideX
float64 strideY
float64 posX
float64 posY
float64 yaw
float64 pitch
float64 roll
float64 bodyHeight
float64 stepHeight

"""
  __slots__ = ['gaitFlag','gaitCycle','strideX','strideY','posX','posY','yaw','pitch','roll','bodyHeight','stepHeight']
  _slot_types = ['float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       gaitFlag,gaitCycle,strideX,strideY,posX,posY,yaw,pitch,roll,bodyHeight,stepHeight

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(commands, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.gaitFlag is None:
        self.gaitFlag = 0.
      if self.gaitCycle is None:
        self.gaitCycle = 0.
      if self.strideX is None:
        self.strideX = 0.
      if self.strideY is None:
        self.strideY = 0.
      if self.posX is None:
        self.posX = 0.
      if self.posY is None:
        self.posY = 0.
      if self.yaw is None:
        self.yaw = 0.
      if self.pitch is None:
        self.pitch = 0.
      if self.roll is None:
        self.roll = 0.
      if self.bodyHeight is None:
        self.bodyHeight = 0.
      if self.stepHeight is None:
        self.stepHeight = 0.
    else:
      self.gaitFlag = 0.
      self.gaitCycle = 0.
      self.strideX = 0.
      self.strideY = 0.
      self.posX = 0.
      self.posY = 0.
      self.yaw = 0.
      self.pitch = 0.
      self.roll = 0.
      self.bodyHeight = 0.
      self.stepHeight = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_11d().pack(_x.gaitFlag, _x.gaitCycle, _x.strideX, _x.strideY, _x.posX, _x.posY, _x.yaw, _x.pitch, _x.roll, _x.bodyHeight, _x.stepHeight))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 88
      (_x.gaitFlag, _x.gaitCycle, _x.strideX, _x.strideY, _x.posX, _x.posY, _x.yaw, _x.pitch, _x.roll, _x.bodyHeight, _x.stepHeight,) = _get_struct_11d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_11d().pack(_x.gaitFlag, _x.gaitCycle, _x.strideX, _x.strideY, _x.posX, _x.posY, _x.yaw, _x.pitch, _x.roll, _x.bodyHeight, _x.stepHeight))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 88
      (_x.gaitFlag, _x.gaitCycle, _x.strideX, _x.strideY, _x.posX, _x.posY, _x.yaw, _x.pitch, _x.roll, _x.bodyHeight, _x.stepHeight,) = _get_struct_11d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_11d = None
def _get_struct_11d():
    global _struct_11d
    if _struct_11d is None:
        _struct_11d = struct.Struct("<11d")
    return _struct_11d
