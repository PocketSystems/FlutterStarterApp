import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_starter_app/src/configs/app_setup.locator.dart';
import 'package:flutter_starter_app/src/configs/app_setup.router.dart';
import 'package:stacked_services/stacked_services.dart';

class NavService {
  static NavigationService? _navigationService = locator<NavigationService>();

  // key
  static GlobalKey<NavigatorState>? get key => StackedService.navigatorKey;

  // key for nested navigator to be used in SplashView
  static final _splashViewNavigatorId = 0;
  static GlobalKey<NavigatorState>? get nestedNavKey =>
      StackedService.nestedNavigationKey(_splashViewNavigatorId);

  // on generate route
  static Route<dynamic>? Function(RouteSettings) get onGenerateRoute =>
      StackedRouter().onGenerateRoute;

  // on generate route
  static Route<dynamic>? Function(RouteSettings, [String])
      get onSplashViewGenerateRoute => SplashViewRouter().onGenerateRoute;

  // nested routes with args for root navigator
  static Future<dynamic>? spalsh({dynamic arguments}) => _navigationService!
      .clearStackAndShow(Routes.splashView, arguments: arguments);

  static Future<dynamic>? dashboard({dynamic arguments}) => _navigationService!
      .navigateTo(Routes.dashboardView, arguments: arguments);

  // nested routes in SplashView with args
  static Future<dynamic>? home({dynamic arguments}) =>
      _navigationService!.clearStackAndShow(SplashViewRoutes.homeView,
          arguments: arguments, id: _splashViewNavigatorId);

  static Future<dynamic>? about({dynamic arguments}) =>
      _navigationService!.navigateTo(SplashViewRoutes.aboutView,
          arguments: arguments, id: _splashViewNavigatorId);
}
