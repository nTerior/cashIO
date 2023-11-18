// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cash_io.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CashIOModelAdapter extends TypeAdapter<CashIOModel> {
  @override
  final int typeId = 0;

  @override
  CashIOModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CashIOModel(
      name: fields[0] as String,
      date: fields[1] as DateTime,
      amount: fields[2] as double,
      categories: (fields[3] as HiveList).castHiveList(),
    );
  }

  @override
  void write(BinaryWriter writer, CashIOModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.date)
      ..writeByte(2)
      ..write(obj.amount)
      ..writeByte(3)
      ..write(obj.categories);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CashIOModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
