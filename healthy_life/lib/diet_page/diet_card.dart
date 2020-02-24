import 'package:flutter/material.dart';
import 'package:healthy_life/workout_page/text_format.dart';

class DietCard extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DietCard();
  }

}

class _DietCard extends State<DietCard>{

  final pathImage = 'assets/images/diet.jpg';

  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 130,
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      width: MediaQuery.of(context).size.width  * 0.75,
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TextFormat("Cuerpo de playa", 25.0, 0),
          TextFormat("Dias", 19.0, 0),
          TextFormat("16/20", 20.0, 0)
        ],
      ),
    );

    // TODO: implement build
    return card;
  }

}
