import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dashboard_view_model.dart';
import 'package:stacked/stacked.dart';

class DashboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DashboardViewModel>.nonReactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text("Dashboard"),
        ),
        backgroundColor: Colors.greenAccent,
        body: Center(child: Text('Dashboard')),
      ),
      viewModelBuilder: () => DashboardViewModel(),
    );
  }
}
