import 'package:flutter/material.dart';
import 'workout_card.dart';


class WorkoutList extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _WorkoutList();
  }

}

class _WorkoutList extends State<WorkoutList>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 250),
      child: ListView(
        children: <Widget>[
          WorkoutCard(),
          WorkoutCard(),
          WorkoutCard(),
          WorkoutCard(),
          WorkoutCard(),
          WorkoutCard(),
          WorkoutCard(),
          WorkoutCard(),
        ],
      )
    );
  }

}