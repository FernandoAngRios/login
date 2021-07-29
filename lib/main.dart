import 'package:flutter/material.dart';
import 'package:login/src/Login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'log',
      routes: {
        'log': (context) => Login(), 
      },
    );
  }
}