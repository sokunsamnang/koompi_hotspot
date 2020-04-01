import 'package:flutter/material.dart';

class WifiButton extends StatelessWidget{
  Widget build(BuildContext context){
    Navigator.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Align(
            alignment: Alignment(-0.20, 0.00),
            child: Text('Map'),
          )
        ),
      ),
      body: Container(
        child: Center(
          child: Text('Map API'),
        ),
      ),
    );
  }
}