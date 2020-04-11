import 'package:connectivity_widget/connectivity_widget.dart';
import 'package:flutter/material.dart';

Widget bodyPage (BuildContext context){
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        _balanceTokens(context),
        _internetConnection(),
      ],
    ),
  );
}

Container _balanceTokens(context){
  return Container(
    margin: EdgeInsets.all(15),
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 11),
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.white, width: 0, style: BorderStyle.solid),
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
      boxShadow: [
        BoxShadow(
            color: Colors.grey,
            offset: Offset(0, 3),
            blurRadius: 6,
            spreadRadius: 1
        ),
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(width: 20),
                Text('Current Tokens',
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 15),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      '\$',
                      style: TextStyle(fontSize: 25),
                    ),
                    SizedBox(width: 13),
                    Text('999,99',
                      style: TextStyle(fontSize: 45),
                    ),
                    SizedBox(width: 13),
                  ],
                ),
                Text('Available',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17),
                ),
              ],
            )
          ],
        ),
      ],
    ),
  );
}


Container _internetConnection(){
    ConnectivityUtils.instance.setCallback((response) => response.contains("This is a test!"));
    ConnectivityUtils.instance.setServerToPing("https://gist.githubusercontent.com/Vanethos/dccc4b4605fc5c5aa4b9153dacc7391c/raw/355ccc0e06d0f84fdbdc83f5b8106065539d9781/gistfile1.txt");
    return Container(
      child: ConnectivityWidget(
        builder: (context, isOnline) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 50),
              Icon(Icons.wifi, size: 70),
              Text("${isOnline ? 'Online' : 'Offline'}", style: TextStyle(fontSize: 30, color: isOnline ? Colors.green : Colors.red),),
              SizedBox(height: 10),
              Text(
                "${isOnline ? 'Internet Connected' : 'Internet Disconnected'}",
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
}