import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part 'cash_io_category.g.dart';

@HiveType(typeId: 1)
class CashIOCategory extends HiveObject {
  @HiveField(0)
  String name;

  @HiveField(1)
  Color color;

  CashIOCategory({required this.name, required this.color});
}