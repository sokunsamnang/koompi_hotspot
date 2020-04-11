import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:koompi_hotspot/src/animations/FadeAnimation.dart';  
  
  @override
  Widget forgotPassword(context, _emailController){
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 180.0,
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 50.0,
                  left: 145.0,
                  height: 125.0,
                  width: 125.0,
                  child: FadeAnimation(1, Container(
                    child: Icon(Icons.lock, size: 100,),
                    
                    )
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: FadeAnimation(1.1, Text('Forgot Password?', 
              style: TextStyle(color: Colors.deepOrange[300], fontFamily: 'Medium', fontSize: 23),
              ),
            ),
          ),
          Center(
            child: FadeAnimation(1.2, 
              Text('we just need your registered email to send you password reset', 
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey[300], 
                  fontFamily: 'Medium', 
                  fontSize: 15,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: FadeAnimation(1.3, 
                    Container(
                      margin: EdgeInsets.only(top: 40.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(28, 146, 210, 1),
                            blurRadius: 20.0,
                            offset: Offset(0, 10.0),
                          )
                        ],
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                            ),
                            child: TextFormField(
                              controller: _emailController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                icon: Icon(Icons.email),
                                labelText: 'Email',
                                hintText: 'koompi@gmail.com',
                                hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ButtonTheme(
                minWidth: 180.0,
                height: 50.0,
                child: FadeAnimation(1.4,
                  Container(
                    margin: EdgeInsets.only(top: 35.0),
                    child: RaisedButton(
                      child: Text('Reset Password', style: TextStyle(color: Colors.white),),
                      color: Color.fromRGBO(49, 39, 79, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(25.0),
                        side: BorderSide(color: Colors.purple),
                      ),
                      onPressed: () async{                          
                        print('Button reset password clicked');
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}