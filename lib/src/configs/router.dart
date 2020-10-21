import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_starter_app/src/views/splash/splash_view.dart';

@CustomAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: SplashView, initial: true),
  ],
)
class $Router {}
