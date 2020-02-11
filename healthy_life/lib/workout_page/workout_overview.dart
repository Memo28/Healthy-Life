import 'package:flutter/material.dart';
import 'workout_list_overview.dart';

class WorkoutOverview extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _WorkoutOverview();
  }

}

class _WorkoutOverview extends State<WorkoutOverview>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: Colors.white
        ),
        title: Text(
          "Cuerpo de playa",
          style: TextStyle(
              color: Colors.white,
              fontFamily: "Righteous"
          ),
        ),
      ),
      body: Container(
        child: WorkoutListOverview(),
      ),
    );
  }

}