import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'test_covid19_controller.dart';

class TestCovid19Page extends StatefulWidget {
  @override
  _TestCovid19PageState createState() => _TestCovid19PageState();
}

class _TestCovid19PageState
    extends ModularState<TestCovid19Page, TestCovid19Controller> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
