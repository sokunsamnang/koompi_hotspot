import 'package:flutter/material.dart';
import 'package:koompi_hotspot/src/screen/create_account/phone_number_body.dart';

class PhoneNumber extends StatefulWidget{
  
  _PhoneNumberState createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber>{
  
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _phonenumberController = TextEditingController();
  
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: phoneNumber(context,_usernameController, _passwordController,_phonenumberController),  
        ),
      ),
    );
  }
}