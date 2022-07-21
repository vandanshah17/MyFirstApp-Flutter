import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class cartPage extends StatelessWidget {
  const cartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.cream,
      appBar: AppBar(
        backgroundColor: Vx.blue800,
        title: "Cart".text.center.make(),
      ),
    );
  }
}
