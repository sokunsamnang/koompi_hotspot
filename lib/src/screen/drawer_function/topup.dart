import 'package:flutter/material.dart';

class TopUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 115.0,
        title: Text('Top Up'),
        
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Text("Enter COUPON", style: TextStyle(color: Colors.black, fontSize: 30),)
            
              ],
            ),
            ),
            Expanded(
              child: Padding(padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 60),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(
                        color: Color.fromRGBO(225, 95, 27, .3),
                        blurRadius: 20,
                        offset: Offset(0, 10)
                      )]
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(20),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "********",
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 35),
                  Container(
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 50),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.blue
                    ),
                    child: Center(
                      child: Text("Top-Up",style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                    )
                  )
                ],
              ),
              ) 
            )
          ],
        ), 
      ),
    );
  }
}