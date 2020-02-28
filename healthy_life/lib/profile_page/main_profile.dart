import 'package:flutter/material.dart';

class MainProfile extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MainProfile();
  }

}

class _MainProfile extends State<MainProfile>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    String title = "Perfil";

//    Future goToCreateDiet (context) async {
//      Navigator.push(context, MaterialPageRoute(builder: (context) => CreateDiet()));
//    }

    final image_user = Container(
        height: 150.0,
        child: Icon(
          Icons.person,
          color: Colors.white,
          size: 100,
        ),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                color: Colors.white,
                width: 0.5
            )
        ),
      );

    final gradient = Container(
        height: 300.0,
        alignment: Alignment(-0.85, -0.5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
            gradient: LinearGradient(
                colors: [
                  Color(0xFF03DA9E),
                  Color(0xFF03DA9E)
                ],
                begin: FractionalOffset(0.2,0.0),
                end: FractionalOffset(1.0, 0.6),
                stops: [0.0,0.6],
                tileMode: TileMode.clamp
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:40.0, left: 15, bottom: 10),
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontFamily: "Righteous",
                ),
              ),
            ),
            Row(
              children: <Widget>[
                  image_user,
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: FlatButton(
                          onPressed: (){
  //                      goToCreateDiet(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Nueva Dieta",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: "Righteous"
                              ),
                            ),
                          ),
                        ),
                      )
                  ),
               ],
              )
          ],
        )
    );

    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Stack(
          children: <Widget>[
            Container(),
//            DietList(),
            gradient,
          ],
        )
    );;
  }

}