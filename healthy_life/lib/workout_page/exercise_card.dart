import 'package:flutter/material.dart';
import 'text_format.dart';

class ExerciseCard extends StatefulWidget{

  String exerciseName = "Press de banca";
  int reps = 12;
  int sets = 3;
  final pathImage = 'assets/images/workout.jpg';

  ExerciseCard(this.exerciseName, this.reps, this.sets);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ExerciseCard(this.exerciseName, this.reps, this.sets);
  }

}

class _ExerciseCard extends State<ExerciseCard>{
  String exerciseName = "Press de banca";
  int reps = 12;
  int sets = 3;
  final pathImage = 'assets/images/workout.jpg';

  bool inactive = true;

  _ExerciseCard(this.exerciseName, this.reps, this.sets);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final exerciseImageContainer = Container(
      margin: EdgeInsets.only(left: 20.0, top: 20.0),
      height: 80,
      width: 80,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(pathImage),
          ),
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
    );

    final redirectionButton = InkWell(
      onTap: (){
//        goToWorkout(context);
      },
      child: Container(
        margin: EdgeInsets.only(left: 10),
        child: Icon(
          Icons.arrow_forward_ios,
          color: Theme.of(context).textSelectionColor,
        ),
      ),
    );


    final card = Container(
      height: 180,
      margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      width: MediaQuery.of(context).size.width  * 0.75,
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              exerciseImageContainer,
              SizedBox(width: 50),
              Column(
                children: <Widget>[
                  TextFormat("Press de banca", 20.0, 1),
                  TextFormat("Sets: 18", 15.0, 1),
                  TextFormat("Repeticiones: 3 ", 15.0, 1),
                  TextFormat("Descanso: 30 seg", 15.0, 1),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 8.0, bottom: 8.0),
            child: Divider(
              color: Theme.of(context).textSelectionColor,
            ),
          ),
          Container(
            child: InkWell(
              onTap: () {
                setState(() {
                  inactive = !inactive;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.check_circle,
                      color: inactive ? Theme.of(context).textSelectionColor : Theme.of(context).primaryColor
                    ),
                  ),
                  Text("Marcar como completado",
                    style: TextStyle(
                      fontFamily: "Righteous",
                      fontSize: 18,
                      color: inactive ? Theme.of(context).textSelectionColor : Theme.of(context).primaryColor
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );


    final repsNumberContainer = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Sets: $sets",
            style: TextStyle(
                fontFamily: "Righteous",
                color: Theme.of(context).textSelectionColor,
                fontSize: 15
            ),
          ),
        ),
        Text(
            "Repeticiones: $reps",
            style: TextStyle(
                fontFamily: "Righteous",
                color: Theme.of(context).textSelectionColor,
                fontSize: 12
            )
        ),

      ],
    );

    return card;
  }

}