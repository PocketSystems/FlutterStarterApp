import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_starter_app/src/configs/locator.dart';
import 'package:stacked_services/stacked_services.dart';

abstract class NavService {
  static NavigationService _navigationService = locator<NavigationService>();

  // key
  static GlobalKey<NavigatorState> get key => _navigationService.navigatorKey;

  // routes with args
  // static Future<dynamic> home({dynamic arguments}) => _navigationService
  //     .clearStackAndShow(Routes.homeView, arguments: arguments);
}
