
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 17;
  final String name = "vandanshah";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("$name's Catalog App"),
        ),
        body: Center(
          child: Container(
            child: Text("My name is $name$days "),
          ),
        ),
        drawer: MyDrawer());
  }
}
