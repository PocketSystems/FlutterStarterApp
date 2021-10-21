import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter_app/src/configs/app_setup.router.dart';
import 'package:flutter_starter_app/src/services/local/navigation_service.dart';
import 'package:flutter_starter_app/src/shared/spacing.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:flutter_starter_app/src/base/utils/utils.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Nested Route Demo with Stacked",
                style: context.appTextTheme().headline4,
                textAlign: TextAlign.center),
          ),
          VerticalSpacing(10),
          ElevatedButton(
              onPressed: NavService.dashboard,
              child: Text("Goto Dashboard with Root Navigator")),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 0),
                          spreadRadius: 1,
                          blurRadius: 30,
                          color: Colors.grey)
                    ]),
                width: 300,
                height: 400,
                child: Navigator(
                  key: NavService.nestedNavKey,
                  observers: [
                    GetObserver((_) {}, Get.routing)
                  ], // <----- this added
                  onGenerateRoute: (settings) {
                    return NavService.onSplashViewGenerateRoute(
                        settings, Routes.splashView);
                  },
                ),
              ),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
