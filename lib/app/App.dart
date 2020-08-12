import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_starter_app/app/Routes.dart';
import 'package:flutter_starter_app/app/models/scoped/AppModel.dart';
import 'package:flutter_starter_app/app/screens/splash/Splash.dart';
import 'package:flutter_starter_app/app/widgets/LoadingIndicator.dart';
import 'package:flutter_starter_app/resources/app_config.dart';
import 'package:scoped_model/scoped_model.dart';

class App extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  AppModel _appModel;

  @override
  void initState() {
    _appModel = AppModel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: _appModel,
      child: ScopedModelDescendant<AppModel>(
        builder: (context, widget, model) => MaterialApp(
            title: AppConfig.of(context).appTitle,
            debugShowCheckedModeBanner: false,
            onGenerateRoute: Routes.cupertinoRoutes,
            home: Splash(),
            builder: (context, child) {
              return Stack(
                children: [child],
              );
            }),
      ),
    );
  }
}
