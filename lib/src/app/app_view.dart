import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_starter_app/src/configs/app_config.dart';
import 'package:flutter_starter_app/src/screens/splash/splash_view.dart';

class AppView extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConfig.of(context).appTitle,
      debugShowCheckedModeBanner: false,
      home: SplashView(),
      builder: (context, child) {
        return Stack(
          children: [child],
        );
      },
    );
  }
}
