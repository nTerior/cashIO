import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class ColorAdapter extends TypeAdapter<Color> {
  @override
  int get typeId => 2;

  @override
  Color read(BinaryReader reader) {
    return Color(reader.read());
  }

  @override
  void write(BinaryWriter writer, Color obj) {
    writer.write(obj.value);
  }
}
