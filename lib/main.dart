import 'package:flutter/material.dart';

import 'package:flutter_application_1/Pages/home_page.dart';
import 'package:flutter_application_1/Pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.lime),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepOrange
      ),
      initialRoute: "/home",
      routes: {
        "/":(context) => LoginPage(),
        "/login":(context) => LoginPage(),
        "/home":(context) => HomePage(),
      },
    );
  }
}
