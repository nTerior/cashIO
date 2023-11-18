import 'dart:ui';

import 'package:hive/hive.dart';

@HiveType(typeId: 1)
class CashIOCategory extends HiveObject {
  @HiveField(0)
  String name;

  @HiveField(1)
  Color color;

  CashIOCategory({required this.name, required this.color});
}