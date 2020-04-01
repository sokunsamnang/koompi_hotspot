import 'dart:async';

import 'package:flutter/material.dart';
import 'package:koompi_hotspot/src/screen/login/login_page.dart';
import 'package:koompi_hotspot/src/screen/onboarding/body.dart';
import 'package:shared_preferences/shared_preferences.dart';

class App extends StatelessWidget{
  Widget build (context){
    return MaterialApp(
      title: 'Koompi Hotspot',
      home: Scaffold(
        body: Center(
          child: new Splash(),   
        ),
      ),
    );
  }
}

class Splash extends StatefulWidget {
    @override
    SplashState createState() => new SplashState();
}

class SplashState extends State<Splash> {
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);

    if (_seen) {
    Navigator.of(context).pushReplacement(
        new MaterialPageRoute(builder: (context) => new LoginPage()));
    } else {
    await prefs.setBool('seen', true);
    Navigator.of(context).pushReplacement(
        new MaterialPageRoute(builder: (context) => new OnBoarding()));
    }
  }

  @override
  void initState() {
      super.initState();
      new Timer(new Duration(milliseconds: 200), () {
      checkFirstSeen();
      });
  }

  @override
  Widget build(BuildContext context) {
      return new Scaffold(
      body: new Center(
          child: new Text('Loading...'),
      ),
      );
  }
}