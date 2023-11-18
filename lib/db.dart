import 'package:cash_io/models/cash_io/cash_io.dart';
import 'package:cash_io/models/cash_io/cash_io_category.dart';
import 'package:hive_flutter/adapters.dart';

class DB {
  DB._();

  static Future<void> init() async {
    await Hive.initFlutter();
    // init adapters
    Hive.registerAdapter(ColorAdapter());
    Hive.registerAdapter(CashIOModelAdapter());
    Hive.registerAdapter(CashIOCategoryAdapter());

    // open boxes
  }
}