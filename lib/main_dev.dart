import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter_app/app/App.dart';
import 'package:flutter_starter_app/app/base/utils/Constants.dart';
import 'package:flutter_starter_app/resources/app_config.dart';

void main() {
  var configuredApp = AppConfig(
    appTitle: Constants.appTitle,
    buildFlavor: "Development",
    baseUrl: '',
    child: App(),
  );
  return runApp(configuredApp);
}
