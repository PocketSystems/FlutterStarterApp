import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter_app/src/app/app_view.dart';
import 'package:flutter_starter_app/src/configs/locator.dart';

void main() {
  setupLocator();
  runApp(AppView());
}
