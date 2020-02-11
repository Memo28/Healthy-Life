import 'package:flutter/material.dart';
import 'workout_card_overview.dart';

class WorkoutListOverview extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _WorkoutListOverview();
  }

}
//WorkoutCardOverview
class _WorkoutListOverview extends State<WorkoutListOverview>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        WorkoutCardOverview(4,'F','K')
      ],
    );
  }

}