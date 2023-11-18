import 'package:cash_io/models/cash_io/cash_io_category.dart';
import 'package:hive/hive.dart';

part 'cash_io.g.dart';

@HiveType(typeId: 0)
class CashIOModel extends HiveObject {
  @HiveField(0)
  String name;

  @HiveField(1)
  DateTime date;

  @HiveField(2)
  double amount;

  @HiveField(3)
  HiveList<CashIOCategory> categories;

  CashIOModel({
    required this.name,
    required this.date,
    required this.amount,
    required this.categories,
  });
}
