import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'about_view_model.dart';
import 'package:stacked/stacked.dart';

class AboutView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AboutViewModel>.nonReactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(title: Text("Nested Route ABOUT")),
        backgroundColor: Colors.pinkAccent,
        body: Center(child: Text('About')),
      ),
      viewModelBuilder: () => AboutViewModel(),
    );
  }
}
