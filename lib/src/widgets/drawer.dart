import 'package:flutter/material.dart';
import 'package:koompi_hotspot/src/screen/home_page/home_page.dart';
import 'package:koompi_hotspot/src/screen/login/login_page.dart';
import 'package:koompi_hotspot/src/screen/credit/topup.dart';


class AppDrawer extends StatefulWidget{
  @override
  _AppDrawerState createState() => _AppDrawerState();
}


class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: <Color>[
                Colors.deepOrange,
                Colors.orangeAccent,
                ]
              )
            ),
            child: Container(
              child: Column(
                children: <Widget>[
                  Material(
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    elevation: 10.0,
                    child: Image.asset('assets/images/koompi_logo.png', width: 80, height: 80,),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('Koompi', style: TextStyle(color: Colors.white, fontSize: 20.0),),
                  )
                ],
              ),
            ),
          ),
          _createDrawerItem(icon: Icons.home,text: 'Home', onTap: (){
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),);
              }),
          _createDrawerItem(icon: Icons.attach_money, text: 'Top Up', onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TopUp()),);
              }), 
          _createDrawerItem(icon: Icons.settings, text: 'Setting',),
          Divider(),
          _createDrawerItem(icon: Icons.exit_to_app, text: 'Logout', onTap: (){
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),);
              }),
          ListTile(
            title: Text('0.0.1'),
            onTap: () {},
          ),
        ],
      ),
    );
  }

Widget _createDrawerItem(
    {IconData icon, String text, GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(text),
        )
      ],
    ),
    onTap: onTap,
  );
}

}