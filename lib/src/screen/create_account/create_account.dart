import 'package:flutter/material.dart';
import 'package:koompi_hotspot/src/screen/create_account/create_account_body.dart';

class CreateAccount extends StatefulWidget{
  
  _CraeteAccountState createState() => _CraeteAccountState();
}

class _CraeteAccountState extends State<CreateAccount>{
  
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmpasswordController = TextEditingController();

  bool _obscureText = true;

  void resetSecure(){
    setState(() {
      _obscureText = !_obscureText;
    });
  }
  
  bool _obscureText2 = true;

  void resetSecure2(){
    setState(() {
      _obscureText2 = !_obscureText2;
    });
  }

  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: createAccount(context,_usernameController, _confirmpasswordController, _emailController, 
                                _passwordController,_obscureText, resetSecure,_obscureText2, resetSecure2),  
        ),
      ),
    );
  }
}