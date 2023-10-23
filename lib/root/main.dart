import 'dart:async';
import 'package:flutter/material.dart';
import 'package:template/di/di.dart';
import 'app.dart';

FutureOr<void> main() async {
  config();
  runApp(const App());
}

Future<void> config() async {
  WidgetsFlutterBinding.ensureInitialized();
  configDependencies();
}
