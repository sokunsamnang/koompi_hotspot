import 'package:flutter/material.dart';
import 'package:koompi_hotspot/src/screen/create_account/create_account_body.dart';

class CreateAccount extends StatefulWidget{
  
  _CraeteAccountState createState() => _CraeteAccountState();
}

class _CraeteAccountState extends State<CreateAccount>{
  
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: createAccount(context,_usernameController, _emailController, _passwordController),  
        ),
      ),
    );
  }
}