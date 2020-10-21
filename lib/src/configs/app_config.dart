import 'package:flutter/widgets.dart';

class AppConfig extends InheritedWidget {
  final String appTitle;
  final String buildFlavor;
  final String baseUrl;
  final Widget child;

  AppConfig(
      {@required this.child,
      @required this.appTitle,
      @required this.baseUrl,
      @required this.buildFlavor});

  static AppConfig of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<AppConfig>();

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}
