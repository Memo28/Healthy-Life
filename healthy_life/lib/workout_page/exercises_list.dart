import 'package:flutter/material.dart';
import 'exercise_card.dart';

class ExercisesList extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ExercisesList();
  }

}

class _ExercisesList extends State<ExercisesList>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        margin: EdgeInsets.only(top: 20),
        child: ListView(
          children: <Widget>[
            ExerciseCard("Press de banca", 4, 3),
            ExerciseCard("Press de banca", 4, 3),
            ExerciseCard("Press de banca", 4, 3),
            ExerciseCard("Press de banca", 4, 3),
            ExerciseCard("Press de banca", 4, 3),
          ],
        )
    );
  }

}