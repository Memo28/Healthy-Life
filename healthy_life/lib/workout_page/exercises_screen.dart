import 'package:flutter/material.dart';
import 'exercises_list.dart';
class ExercisesScreen extends StatelessWidget{
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
        child: ExercisesList(),
      ),
    );
  }

}