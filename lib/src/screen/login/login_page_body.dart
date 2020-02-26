import 'package:flutter/material.dart';
import 'package:koompi_hotspot/src/animations/FadeAnimation.dart';
import 'package:koompi_hotspot/src/screen/create_account/create_account.dart';
import 'package:koompi_hotspot/src/screen/home_page/home_page.dart';
import 'package:koompi_hotspot/src/widgets/socialmedia.dart';

Widget myBody(BuildContext context, _usernameController, _passwordController, bool _obscureText, Function resetSecure){
  
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
                top: 50.0,
                left: 145.0,
                height: 125.0,
                width: 125.0,
                child: FadeAnimation(1, Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/koompi_logo_signal.png'),
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
                    margin: EdgeInsets.only(bottom: 20.0, right: 260.0),
                    child: FadeAnimation(1,
                      Text('Sign In', 
                      style: TextStyle(
                        color: Colors.deepOrange[300],
                        fontFamily: 'Bold' ,
                        fontSize: 23
                        ),     
                      ),
                    ),
                  ),

          /*--------------Body Box Field--------------*/

            Container(
              margin: EdgeInsets.only(top: 0.0),
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

              child: Column(
                children: <Widget>[
                /*--------------Username Field--------------*/
                  Container(
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
                    ),
                /*--------------Password Field--------------*/
                  Container(
                    padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(
                          color: Colors.transparent,
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
                  ),
                ],
              ),
            ),
          ),
        ),
                  
                /*--------------Forgot Password Button--------------*/   
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: FlatButton(
                    splashColor: Colors.transparent,  
                    highlightColor: Colors.transparent, 
                    
                    onPressed: (){
                      print('Fogot Password botton pressed');
                    }, 
                    child: FadeAnimation(1.5,
                      Text('Forgot Password?', 
                      style: TextStyle(
                        color: Color.fromRGBO(196, 135, 198, 1)
                        ),
                      ),
                    ), 
                  ),
                ),
                /*--------------Login Button--------------*/
                ButtonTheme(
                  minWidth: 180.0,
                  height: 50.0,
                  child: FadeAnimation(1.6,
                    Container(
                      margin: EdgeInsets.only(top: 15.0),
                      child: RaisedButton(
                        child: Text('Sign In', style: TextStyle(color: Colors.white),),
                        color: Color.fromRGBO(49, 39, 79, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          side: BorderSide(color: Colors.purple),
                        ),
                        onPressed: (){
                          Navigator.pushReplacement(context, 
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                      ),
                    ),
                  ),
                ),

                /*--------------Create Account Button--------------*/
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      alignment: Alignment.bottomCenter,
                      child: FadeAnimation(1.7,Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Not a member ?',
                            style: TextStyle(
                              color: Colors.white, 
                              fontSize: 13, 
                              fontWeight: FontWeight.w600),
                          ),
                          SizedBox(width: 10,),
                          InkWell(
                            onTap: () {
                                Navigator.push(context,
                                MaterialPageRoute(builder: (context) => CreateAccount())
                              );
                            },
                            splashColor: Colors.transparent,  
                            highlightColor: Colors.transparent, 
                            
                            child: Text('Register Now',
                              style: TextStyle(
                                color: Color(0xfff79c4f),
                                fontSize: 13,
                                fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

          /*------------Connect with social media------------*/
          Row(
            children: <Widget>[
              Expanded(
                child: FadeAnimation(1.8,Container(
                    margin: const EdgeInsets.only(left: 60.0, right: 10.0),
                    child: Divider(
                      color: Colors.white,
                  )
                ),
              ),
            ),
                FadeAnimation(1.8,
                Text('or', style: TextStyle(color: Colors.white, fontFamily: 'Medium',),),),

              Expanded(
                child: FadeAnimation(1.8,Container(
                    margin: const EdgeInsets.only(left: 10.0, right: 60.0),
                    child: Divider(
                      color: Colors.white,
                  )
                ),
              ),
            ),
          ]
        ),
          
          /*--------Social Media Botton Icon--------*/
          Center(
              child: FadeAnimation(1.7,Row(
                children: <Widget>[
                  onPressFB(context),
                  onPressGoogle(context),
                ],
              ),
            ),
          ),
          
                
          
          /*--------------Powered by Koompi--------------*/ 
          Expanded(child: Container(),),
          Container(
            child: FadeAnimation(1.8, 
              Align(
                alignment: Alignment.bottomCenter,
                child: Text('Copyright © 2020 KOOMPI', 
                style: TextStyle(
                  color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
