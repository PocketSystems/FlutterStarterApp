import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter_app/src/configs/app_config.dart';
import 'package:flutter_starter_app/src/widgets/loading_indicator.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                '${AppConfig.of(context).appTitle} - ${AppConfig.of(context).buildFlavor}'),
            SizedBox(
              height: 16.0,
            ),
            LoadingIndicator(
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
