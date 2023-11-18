import 'package:cash_io/models/cash_io/cash_io_category.dart';
import 'package:hive/hive.dart';

part 'cash_io.g.dart';

@HiveType(typeId: 0)
class CashIOModel extends HiveObject {
  @HiveField(0)
  DateTime date;

  @HiveField(1)
  double amount;

  @HiveField(2)
  HiveList<CashIOCategory> categories;

  CashIOModel({required this.date, required this.amount, required this.categories});
}