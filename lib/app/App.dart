import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_starter_app/app/Routes.dart';
import 'package:flutter_starter_app/app/screens/splash/Splash.dart';
import 'package:flutter_starter_app/resources/app_config.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConfig.of(context).appTitle,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routes.cupertinoRoutes,
      home: Splash(),
      builder: (context, child) {
        return Stack(
          children: [child],
        );
      },
    );
  }
}
