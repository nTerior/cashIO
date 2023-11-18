import 'package:cash_io/db.dart';
import 'package:cash_io/generated/assets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  await DB.init();

  // add licenses
  LicenseRegistry.addLicense(() async* {
    yield LicenseEntryWithLineBreaks(
      ["Nunito"],
      await rootBundle.loadString(Assets.licensesNunitoOFL),
    );
  });

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
