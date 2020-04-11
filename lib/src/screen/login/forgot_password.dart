import 'package:flutter/material.dart';
import 'package:koompi_hotspot/src/screen/login/forgot_password_body.dart';


class ForgotPassword extends StatefulWidget{
  
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword>{
  
  final _emailController = TextEditingController();
  
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: forgotPassword(context, _emailController),  
        ),
      ),
    );
  }
}