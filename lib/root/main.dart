import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template/di/di.dart';
import 'package:template/root/bloc_observer.dart';
import 'app.dart';

FutureOr<void> main() async {
  config();
  runApp(const App());
}

Future<void> config() async {
  Bloc.observer = AppBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  configDependencies();
}
