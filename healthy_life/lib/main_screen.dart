import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MainScreen();
  }
}

class _MainScreen extends State<MainScreen>{
  @override
  Widget build(BuildContext context) {

    final top_text = Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.centerLeft,
      height: 400,
      margin: EdgeInsets.only(top: 50, left: 20),
      child: Column(
        children: <Widget>[
          Text(
            "HEALTHY LIFE",
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 40,
                fontFamily: "Righteous",
                color: Theme.of(context).primaryColor
            ),
          ),
          Text(
            "Tu asistente virtual",
            style: TextStyle(
                fontSize: 20,
                fontFamily: "Righteous",
                color: Theme.of(context).primaryColor
            ),
          )
        ],
      )
    );

    final logo = Container(
      child: AssetImage("/assets/images/main-logo.png"),
    );



    // TODO: implement build
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        children: <Widget>[
          top_text
        ],
      )
    );
  }

}