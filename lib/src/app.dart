import 'package:flutter/material.dart';
import 'package:koompi_hotspot/src/screen/onboarding/body.dart';
import '../src/screen//login/login_page.dart';

class App extends StatelessWidget{
  Widget build (context){
    return MaterialApp(
      title: 'Koompi Hotspot',
      home: Scaffold(
        body: Center(
          child: OnBoarding(),
        ),
      ),
    );
  }
}