import 'package:flutter/material.dart';
import 'package:koompi_hotspot/src/screen/home_page/home_page.dart';
import 'package:koompi_hotspot/src/screen/login/login_page.dart';


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
          _createDrawerItem(icon: Icons.home,text: 'Home', onTap: (){
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),);
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