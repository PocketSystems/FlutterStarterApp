import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter_app/src/app/App.dart';
import 'package:flutter_starter_app/src/base/utils/Constants.dart';
import 'package:flutter_starter_app/src/configs/app_config.dart';

void main() {
  var configuredApp = AppConfig(
    appTitle: Constants.appTitle,
    buildFlavor: "Production",
    baseUrl: '', // url for production app
    child: App(),
  );
  return runApp(configuredApp);
}
