import 'package:flutter/material.dart';
import 'package:koompi_hotspot/src/animations/FadeAnimation.dart';
import 'package:koompi_hotspot/src/screen/login/login_page.dart';

Widget _loginAccountLabel(context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Already have an account ?',
            style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w600),
          ),
          SizedBox(width: 10,),
          InkWell(
            onTap: () {
                Navigator.pop(context,
                MaterialPageRoute(builder: (context) => LoginPage()));
            },
            splashColor: Colors.transparent,  
            highlightColor: Colors.transparent, 
            
            child: Text('Login',
              style: TextStyle(
                color: Color(0xfff79c4f),
                fontSize: 13,
                fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }

Widget createAccount(context,_usernameController, _confirmpasswordController, _emailController, _passwordController,_obscureText, resetSecure,_obscureText2, resetSecure2){
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/images/background.jpg'), 
        fit: BoxFit.cover
        ),
      ),

    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 180.0,
          child: Stack(
            children: <Widget>[
    /*--------------------------Header Image--------------------------*/
              Positioned(   
                bottom: 20.0,       
                left: 145.0,
                height: 125.0,
                width: 125.0,
                child: FadeAnimation(1, Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/learning.png'),
                      fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
          /*--------------------------Body Text--------------------------*/
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),           
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center, 
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 10.0, bottom: 2.0, right: 260.0,),
                    child: FadeAnimation(1,
                      Text('Sign Up', style: TextStyle(color: Colors.deepOrange[300], fontFamily: 'Bold', fontSize: 23),      
                      ),
                    ),
                  ),

          /*--------------Body Box Field--------------*/

            Container(
              margin: EdgeInsets.only(top: 10),
              child: FadeAnimation(1.3,
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(28, 146, 210, 1),
                        blurRadius: 20.0,
                        offset: Offset(0, 10.0),
                      ),
                    ],
                  ),

            /*--------------Box Field--------------*/
              child: Column(
                children: <Widget>[
                  _usernameBox(context, _usernameController),                 
                  _emailBox(context, _emailController),                 
                  _passwordBox(context, resetSecure, _obscureText, _passwordController),               
                  _confirmpasswordBox(context, resetSecure2, _obscureText2, _confirmpasswordController),        
                ],
              ),
            ),
          ),
        ),
        _createButton(context),
                /*--------------Already have an account Button--------------*/
                Align(                   
                  alignment: Alignment.bottomCenter,                   
                  child: FadeAnimation(1.8,_loginAccountLabel(context),                 
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Container _usernameBox(context, _usernameController){
  return Container(
    padding: EdgeInsets.all(10.0),
    decoration: BoxDecoration(
      border: Border(bottom: BorderSide(
        color: Colors.grey[300],
        ),
      ),
    ),
    child: TextFormField(
      controller: _usernameController,
      decoration: InputDecoration(                       
        icon: Icon(Icons.account_circle),
        border: InputBorder.none,
        labelText: 'Username',
        hintText: 'koompi',
        hintStyle: TextStyle(color: Colors.grey),
      ),
    ),
  );
}

Container _emailBox(context, _emailController){
  return Container(
    padding: EdgeInsets.all(10.0),
    decoration: BoxDecoration(
      border: Border(bottom: BorderSide(
        color: Colors.grey[300],
        ),
      ),
    ),
    child: TextFormField(
      controller: _emailController,
      decoration: InputDecoration(
        icon: Icon(Icons.email),
        border: InputBorder.none,
        labelText: 'Email',
        hintText: 'koompi@email.com',
        hintStyle: TextStyle(color: Colors.grey),
      ),
    ),
  );
}

Container _passwordBox(context, resetSecure, _obscureText, _passwordController){
  return Container(
    padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(
          color: Colors.grey[300],
          ),
        ),
      ),
      child: TextFormField(
        controller: _passwordController,
        decoration: InputDecoration(
          icon: Icon(Icons.vpn_key),
          border: InputBorder.none,
          labelText: 'Password',
          hintText: 'koompi123',
          hintStyle: TextStyle(color: Colors.grey),
          suffixIcon: GestureDetector(
            onTap: (){
              resetSecure();
            },
            child: Icon(_obscureText ? Icons.visibility : Icons.visibility_off,),
          ),
        ),
        obscureText:  _obscureText,
    ),
  );
}

Container _confirmpasswordBox(context, resetSecure2, _obscureText2, _confirmpasswordController){
  return Container(
    padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(
          color: Colors.transparent,
          ),
        ),
      ),
      child: TextFormField(
        controller: _confirmpasswordController,
        decoration: InputDecoration(
          icon: Icon(Icons.vpn_key),
          border: InputBorder.none,
          labelText: 'Password',
          hintText: 'koompi123',
          hintStyle: TextStyle(color: Colors.grey),
          suffixIcon: GestureDetector(
            onTap: (){
              resetSecure2();
            },
            child: Icon(_obscureText2 ? Icons.visibility : Icons.visibility_off,),
          ),
        ),
        obscureText:  _obscureText2,
    ),
  );
}

ButtonTheme _createButton(context){
  return ButtonTheme(
    minWidth: 180.0,
    height: 50.0,
    child: FadeAnimation(1.6,
      Container(
        margin: EdgeInsets.only(top: 30.0),
        child: RaisedButton(
          child: Text('Register Now', style: TextStyle(color: Colors.white),),
          color: Color.fromRGBO(49, 39, 79, 1),
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(25.0),
            side: BorderSide(color: Colors.purple),
          
          ),
          onPressed: (){
            print('Register Button Pressed');
          },
        ),
      ),
    ),
  );
}