import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter_app/src/app/app.dart';
import 'package:flutter_starter_app/src/base/utils/constants.dart';
import 'package:flutter_starter_app/src/configs/app_config.dart';

void main() {
  var configuredApp = AppConfig(
    appTitle: Constants.appTitle,
    buildFlavor: "Development",
    baseUrl: '', // url for development phase
    child: App(),
  );
  return runApp(configuredApp);
}
