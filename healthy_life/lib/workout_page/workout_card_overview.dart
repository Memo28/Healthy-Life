import 'package:flutter/material.dart';

class WorkoutCardOverview extends StatelessWidget{
  int totalExercises = 10;
  String day = "Monday";
  String focusGroup = "Leg";

  WorkoutCardOverview(this.totalExercises, this.day, this.focusGroup);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    return Container(
      height: 100,
      margin: EdgeInsets.only(top: 20.0, left: 30.0, right: 30.0),
      color: Colors.white,
    );
  }

}