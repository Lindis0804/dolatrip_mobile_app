import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:template/common/enums/flavors.dart';
import 'package:template/pages/splash/splash.screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: F.title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
