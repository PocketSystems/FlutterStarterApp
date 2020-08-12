import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter_app/app/widgets/LoadingIndicator.dart';
import 'package:flutter_starter_app/resources/app_config.dart';

class Splash extends StatelessWidget {
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
