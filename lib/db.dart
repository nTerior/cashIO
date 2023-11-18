import 'package:cash_io/models/cash_io/cash_io.dart';
import 'package:cash_io/models/cash_io/cash_io_category.dart';
import 'package:cash_io/models/custom_adapters/icon_data_adapter.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:material_symbols_icons/symbols.dart';

class DB {
  DB._();

  static late Box<CashIOModel> cashIO;
  static late Box<CashIOCategory> cashIOCategories;

  static Future<void> init() async {
    await Hive.initFlutter();
    // init adapters
    Hive.registerAdapter(ColorAdapter());
    Hive.registerAdapter(IconDataAdapter());
    Hive.registerAdapter(CashIOModelAdapter());
    Hive.registerAdapter(CashIOCategoryAdapter());

    // open boxes
    cashIOCategories = await Hive.openBox<CashIOCategory>("cashIOCategory");
    // todo: remove after debugging
    await cashIOCategories.clear();
    await cashIOCategories.addAll([
      CashIOCategory(
        name: "Housing",
        color: Colors.green,
        icon: Symbols.king_bed_rounded,
      ),
      CashIOCategory(
        name: "Transportation",
        icon: Symbols.tram_rounded,
      ),
      CashIOCategory(
        name: "Food and Drinks",
        color: Colors.orange,
        icon: Symbols.lunch_dining_rounded,
      ),
      CashIOCategory(
        name: "Insurance",
        color: Colors.teal,
        icon: Symbols.safety_check_rounded,
      ),
      CashIOCategory(
        name: "Medical and Healthcare",
        color: Colors.red,
        icon: Symbols.health_and_safety_rounded,
      ),
      CashIOCategory(
        name: "Banking",
        color: Colors.lightGreen,
        icon: Symbols.account_balance_rounded,
      ),
      CashIOCategory(
        name: "Sports",
        color: Colors.deepOrangeAccent,
        icon: Symbols.pool_rounded,
      ),
      CashIOCategory(
        name: "Entertainment",
        color: Colors.blueAccent,
        icon: Symbols.live_tv_rounded,
      ),
      CashIOCategory(
        name: "Travelling",
        icon: Symbols.flights_and_hotels_rounded,
      ),
      CashIOCategory(
        name: "Clothing",
        color: Colors.deepPurpleAccent,
        icon: Symbols.styler,
      ),
    ]);

    cashIO = await Hive.openBox<CashIOModel>("cashIO");
    await cashIO.clear();
    // todo: remove after debugging
    for (final x in cashIOCategories.values) {
      await cashIO.add(
        CashIOModel(
          name: x.name,
          date: DateTime.now(),
          amount: 76,
          categories: HiveList(cashIOCategories)
            ..add(
              x,
            ),
        ),
      );
    }
  }
}
