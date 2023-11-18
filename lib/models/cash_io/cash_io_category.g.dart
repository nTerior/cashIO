// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cash_io_category.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CashIOCategoryAdapter extends TypeAdapter<CashIOCategory> {
  @override
  final int typeId = 1;

  @override
  CashIOCategory read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CashIOCategory(
      name: fields[0] as String,
      color: fields[1] as Color?,
      icon: fields[2] as IconData,
    );
  }

  @override
  void write(BinaryWriter writer, CashIOCategory obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.color)
      ..writeByte(2)
      ..write(obj.icon);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CashIOCategoryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
