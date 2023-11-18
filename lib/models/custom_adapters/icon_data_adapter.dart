import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class IconDataAdapter extends TypeAdapter<IconData> {
  @override
  int get typeId => 3;

  @override
  IconData read(BinaryReader reader) {
    final codePoint = reader.read();
    final fontFamily = reader.read();
    final fontFamilyFallback = reader.read();
    final fontPackage = reader.read();
    final matchTextDirection = reader.read();
    return IconData(
      codePoint,
      fontFamily: fontFamily,
      fontFamilyFallback: fontFamilyFallback,
      fontPackage: fontPackage,
      matchTextDirection: matchTextDirection,
    );
  }

  @override
  void write(BinaryWriter writer, IconData obj) {
    writer.write(obj.codePoint);
    writer.write(obj.fontFamily);
    writer.write(obj.fontFamilyFallback);
    writer.write(obj.fontPackage);
    writer.write(obj.matchTextDirection);
  }
}
