import 'package:hive_flutter/adapters.dart';

class DB {
  DB._();

  static Future<void> init() async {
    await Hive.initFlutter();
    // open boxes
  }
}