import 'package:flutter/material.dart';
import 'workout_card.dart';
import 'workout_list.dart';

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
              child: WorkoutCard()
          )
        ],
      )
    );


    // TODO: implement build
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Stack(
          children: <Widget>[
            Container(),
            WorkoutList(),
            gradient,
            ],
          )
    );
  }

}