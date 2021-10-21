// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../views/about/about_view.dart';
import '../views/dashboard/dashboard_view.dart';
import '../views/home/home_view.dart';
import '../views/splash/splash_view.dart';

class Routes {
  static const String splashView = '/';
  static const String dashboardView = '/dashboard-view';
  static const all = <String>{
    splashView,
    dashboardView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(
      Routes.splashView,
      page: SplashView,
      generator: SplashViewRouter(),
    ),
    RouteDef(Routes.dashboardView, page: DashboardView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    SplashView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashView(),
        settings: data,
      );
    },
    DashboardView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => DashboardView(),
        settings: data,
      );
    },
  };
}

class SplashViewRoutes {
  static const String homeView = '/';
  static const String aboutView = '/about-view';
  static const all = <String>{
    homeView,
    aboutView,
  };
}

class SplashViewRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(SplashViewRoutes.homeView, page: HomeView),
    RouteDef(SplashViewRoutes.aboutView, page: AboutView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeView(),
        settings: data,
      );
    },
    AboutView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AboutView(),
        settings: data,
      );
    },
  };
}
