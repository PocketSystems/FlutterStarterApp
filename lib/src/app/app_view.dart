import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_starter_app/src/configs/app_config.dart';
import 'package:flutter_starter_app/src/configs/router.gr.dart' as router;
import 'package:flutter_starter_app/src/services/local/navigation_service.dart';
import 'package:flutter_starter_app/src/views/splash/splash_view.dart';

class AppView extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConfig.of(context).appTitle,
      debugShowCheckedModeBanner: false,
      initialRoute: router.Routes.splashView,
      onGenerateRoute: router.Router().onGenerateRoute,
      navigatorKey: NavService.key,
      home: SplashView(),
      builder: (context, child) {
        return Stack(
          children: [child],
        );
      },
    );
  }
}
