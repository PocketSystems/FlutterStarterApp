import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_starter_app/src/configs/app_config.dart';
import 'package:flutter_starter_app/src/screens/splash/splash.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConfig.of(context).appTitle,
      debugShowCheckedModeBanner: false,
      home: Splash(),
      builder: (context, child) {
        return Stack(
          children: [child],
        );
      },
    );
  }
}
