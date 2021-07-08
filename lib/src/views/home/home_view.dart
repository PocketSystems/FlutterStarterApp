import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_starter_app/src/views/home/home_view_model.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.nonReactive(
      builder: (context, model, child) => Scaffold(
        body: Center(child: Text('Home')),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
