import 'package:flutter/material.dart';
import 'package:koompi_hotspot/src/screen/home_page/wifi_button_appbar.dart';
import 'package:koompi_hotspot/src/widgets/drawer.dart';

class HomePage extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      drawer: SafeArea(
        child: AppDrawer()
        ),
      appBar: AppBar(
        title: Center(
          child: Text('Koompi Hotspot', style: TextStyle(fontFamily: 'Medium', fontSize: 18),),  
        ),

        //WIFI MAP BUTTON
        actions: <Widget>[
          Padding(padding: EdgeInsets.only(right: 10.0),
          child: GestureDetector(
            onTap: (){
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WifiButton(),
                ),
              );
            },
            child: Icon(Icons.wifi_tethering, size: 30.0,),
            ),
          )
        ],
      ),
      body: Container(
        
      ),
    );
  }
}