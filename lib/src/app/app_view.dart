import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter_app/src/base/utils/constants.dart';
import 'package:flutter_starter_app/src/services/local/navigation_service.dart';
import 'package:flutter_starter_app/src/views/splash/splash_view.dart';

class AppView extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.appTitle,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: NavService.onGenerateRoute,
      navigatorKey: NavService.key,
      home: SplashView(),
      builder: (context, child) {
        return Stack(
          children: [child!],
        );
      },
    );
  }
}
