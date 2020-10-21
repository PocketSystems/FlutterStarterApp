import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_starter_app/src/views/home/home_view.dart';
import 'package:flutter_starter_app/src/views/splash/splash_view.dart';

@CustomAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: SplashView, initial: true),
    MaterialRoute(
      page: HomeView,
    ),
  ],
)
class $Router {}
