import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter_app/src/app/app_view.dart';
import 'package:flutter_starter_app/src/base/utils/constants.dart';
import 'package:flutter_starter_app/src/configs/app_config.dart';
import 'package:flutter_starter_app/src/configs/locator.dart';
import 'package:flutter_stetho/flutter_stetho.dart';

void main() {
  Stetho.initialize();
  setupLocator();
  var configuredApp = AppConfig(
    appTitle: Constants.appTitle,
    buildFlavor: "Development",
    baseUrl: '', // url for development phase
    child: AppView(),
  );
  return runApp(configuredApp);
}
