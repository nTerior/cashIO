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
      date: fields[0] as DateTime,
      amount: fields[1] as double,
      categories: (fields[2] as HiveList).castHiveList(),
    );
  }

  @override
  void write(BinaryWriter writer, CashIOModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.date)
      ..writeByte(1)
      ..write(obj.amount)
      ..writeByte(2)
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
