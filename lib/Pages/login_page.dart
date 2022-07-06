

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text(
         "Login Page",
         style: TextStyle(
          fontSize: 25,
          color: Colors.brown,
          fontWeight: FontWeight.bold,
          backgroundColor: Color.fromARGB(255, 151, 240, 154),
         ) ,
        )
      ),
    );
  }
}
