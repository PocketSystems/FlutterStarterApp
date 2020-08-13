import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter_app/app/App.dart';
import 'package:flutter_starter_app/app/base/utils/Constants.dart';
import 'package:flutter_starter_app/resources/app_config.dart';

void main() {
  var configuredApp = AppConfig(
    appTitle: Constants.appTitle,
    buildFlavor: "Development",
    baseUrl: '', // url for development phase
    child: App(),
  );
  return runApp(configuredApp);
}
