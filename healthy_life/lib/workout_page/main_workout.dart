import 'package:flutter/material.dart';
import 'workout_card.dart';

class MainWorkout extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MainWorkout();
  }

}

class _MainWorkout extends State<MainWorkout>{
  @override
  Widget build(BuildContext context) {
    String title = "Tu plan de entrenamiento";

    final gradient = Container(
      height: 270.0,
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
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontFamily: "Righteous",
        ),
      ),
      alignment: Alignment(-0.85, -0.5),
    );


    // TODO: implement build
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        children: <Widget>[
          Stack(
          children: <Widget>[
            gradient,
            Align(
              alignment: Alignment.center,
              child: WorkoutCard(),
              )
            ],
          )
        ],
      ),
    );
  }

}