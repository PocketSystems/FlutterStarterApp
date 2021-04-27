import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_starter_app/src/configs/locator.dart';
import 'package:flutter_starter_app/src/configs/router.router.dart';
import 'package:stacked_services/stacked_services.dart';

class NavService {
  static NavigationService _navigationService = locator<NavigationService>();

  // key
  static GlobalKey<NavigatorState> get key => StackedService.navigatorKey;

  // routes with args
  static Future<dynamic> home({dynamic arguments}) => _navigationService
      .clearStackAndShow(Routes.homeView, arguments: arguments);
}
