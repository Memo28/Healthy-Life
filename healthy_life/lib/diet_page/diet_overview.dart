import 'package:flutter/material.dart';
import 'package:healthy_life/workout_page/text_format.dart';
import 'meal_screen.dart';

class DietOverview extends StatefulWidget{
  String meal_time = "Desayuno";
  String meal_name = "Ensalada de espinacas";
  String prep_time = "5 min";
  DietOverview(this.meal_time, this.meal_name, this.prep_time);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DietOverview();
  }

}

class _DietOverview extends State<DietOverview>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final pathImage = 'assets/images/salad.jpg';


    Future goToMealInformation(context) async {
      Navigator.push(context, MaterialPageRoute(builder: (context) => MealScreen()));
    }

    final image = Container(
      height: 120,
      margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(pathImage),
          ),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
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

    final text = Container(
      height: 70,
      margin: EdgeInsets.only(left: 10.0, right: 10.0),
      width: MediaQuery.of(context).size.width  * 0.75,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
          shape: BoxShape.rectangle,
          gradient: LinearGradient(
            colors: [
              Color(0xFFCECCCC),
              Color(0xFFCECCCC)
            ],
          ),
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
          TextFormat(widget.meal_name, 15, 1),
          TextFormat(widget.prep_time, 15, 0),
        ],
      ),
    );

    return InkWell(
      onTap: () {
        goToMealInformation(context);
      },
      child: Column(
        children: <Widget>[
          TextFormat(widget.meal_time, 15, 1),
          image,
          text
        ],
      ),
    );
  }

}