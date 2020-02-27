import 'package:flutter/material.dart';
import 'diet_card.dart';
import 'diet_list.dart';
import 'create_diet.dart';

class MainDiet extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MainDiet();
  }

}

class _MainDiet extends State<MainDiet>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    String title = "Tu plan alimenticio";

    Future goToCreateDiet (context) async {
      Navigator.push(context, MaterialPageRoute(builder: (context) => CreateDiet()));
    }

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
            Align(
                alignment: Alignment.center,
                child: DietCard(),
            ),
            Align(
                alignment: Alignment.center,
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: FlatButton(
                    onPressed: (){
                      goToCreateDiet(context);
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
    );

    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Stack(
          children: <Widget>[
            Container(),
            DietList(),
            gradient,
          ],
        )
    );;
  }

}