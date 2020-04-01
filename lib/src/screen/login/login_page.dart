import 'package:flutter/material.dart';
import 'package:koompi_hotspot/src/screen/home_page/home_page.dart';
import 'package:koompi_hotspot/src/screen/login/login_page_body.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget{
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{

  static String username = 'admin';
  static String password = 'admin';


  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _obscureText = true;

  void resetSecure(){
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: myBody(context,_usernameController,_passwordController,_obscureText, resetSecure),
        ),
      ),
    ); 
  }
}

