import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter_app/src/app/app_view.dart';
import 'package:flutter_starter_app/src/base/utils/constants.dart';
import 'package:flutter_starter_app/src/configs/app_config.dart';

void main() {
  var configuredApp = AppConfig(
    appTitle: Constants.appTitle,
    buildFlavor: "Production",
    baseUrl: '', // url for production app
    child: AppView(),
  );
  return runApp(configuredApp);
}
