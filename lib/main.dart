import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'domain/core/injection.dart';
import 'presentation/core/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.prod);
  runApp(const AppWidget());
}
