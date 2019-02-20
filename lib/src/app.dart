import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'package:flutter/services.dart';

class App extends StatelessWidget {

  Widget build(context){
      // Set landscape orientation
SystemChrome.setPreferredOrientations([
  DeviceOrientation.portraitDown,
  DeviceOrientation.portraitUp,
]);
    return new MaterialApp(
      title: 'log me in',
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}