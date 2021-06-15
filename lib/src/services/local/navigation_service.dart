import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_starter_app/src/configs/app_setup.locator.dart';
import 'package:flutter_starter_app/src/configs/app_setup.router.dart';
import 'package:stacked_services/stacked_services.dart';

class NavService {
  static NavigationService? _navigationService = locator<NavigationService>();

  // key
  static GlobalKey<NavigatorState>? get key => StackedService.navigatorKey;

  // on generate route
  static Route<dynamic>? Function(RouteSettings) get onGenerateRoute =>
      StackedRouter().onGenerateRoute;

  // routes with args
  static Future<dynamic>? home({dynamic arguments}) => _navigationService!
      .clearStackAndShow(Routes.homeView, arguments: arguments);
}
