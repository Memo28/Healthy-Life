import 'package:flutter/material.dart';
import 'workout_day.dart';

class WorkoutCardOverview extends StatelessWidget{
  int totalExercises = 10;
  String day = "Monday";
  String focusGroup = "Leg";

  WorkoutCardOverview(this.totalExercises, this.day, this.focusGroup);
  
  Future goToWorkout(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => WorkoutDay()));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final dayContainer = Container(
      margin: EdgeInsets.only(left: 20.0),
      height: 80,
      width: 80,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0)
            )
          ]
      ),
      child: Text(
        day,
        style: TextStyle(
            color: Colors.white,
            fontFamily: "Righteous",
            fontSize: 20
        ),
      ),
    );

    final informationContainer = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Numero de ejercicios: $totalExercises",
            style: TextStyle(
                fontFamily: "Righteous",
                color: Theme.of(context).textSelectionColor,
                fontSize: 15
            ),
          ),
        ),
        Text(
          "Grupo muscular: $focusGroup",
          style: TextStyle(
              fontFamily: "Righteous",
              color: Theme.of(context).textSelectionColor,
              fontSize: 12
          )
        ),

      ],
    );

    final redirectionButton = InkWell(
      onTap: (){
        goToWorkout(context);
      },
      child: Container(
        margin: EdgeInsets.only(left: 10),
        child: Icon(
          Icons.arrow_forward_ios,
          color: Theme.of(context).textSelectionColor,
        ),
      ),
    );


    return Container(
      height: 100,
      margin: EdgeInsets.only(top: 20.0, left: 30.0, right: 30.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0)
            )
          ]
      ),
      child: Row(
        children: <Widget>[
          dayContainer,
          informationContainer,
          redirectionButton
        ],
      ),
    );
  }

}