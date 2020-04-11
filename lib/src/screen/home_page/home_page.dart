import 'package:flutter/material.dart';
import 'package:koompi_hotspot/src/screen/home_page/home_page_body.dart';
import 'package:koompi_hotspot/src/screen/home_page/wifi_button_appbar.dart';
import 'package:koompi_hotspot/src/screen/login/login_page.dart';
import 'package:koompi_hotspot/src/widgets/drawer.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget{
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

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
        child: bodyPage(context),
      ),
    );
  }
}