import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter_app/src/app/app_view.dart';
import 'package:flutter_starter_app/src/configs/app_setup.locator.dart';
import 'package:flutter_starter_app/src/services/local/flavor_service.dart';
import 'package:package_info/package_info.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // getting package
  final package = await PackageInfo.fromPlatform();

  // app flavor init
  AppFlavor.init(package);

  setupLocator();

  runApp(AppView());
}
