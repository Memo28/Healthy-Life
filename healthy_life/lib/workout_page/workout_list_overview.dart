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
        WorkoutCardOverview(4,'LUN','Pierna'),
        WorkoutCardOverview(4,'MAR','Brazo'),
        WorkoutCardOverview(4,'MIE','Pierna'),
        WorkoutCardOverview(4,'JUE','Brazo'),
        WorkoutCardOverview(4,'VIE','Pierna'),
        WorkoutCardOverview(4,'SAB','Brazo'),
        WorkoutCardOverview(4,'VIE','Pierna'),
        WorkoutCardOverview(4,'SAB','Brazo')
      ],
    );
  }

}