import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';


class MealScreen extends StatelessWidget{
  String meal_name = "Ensalada de espinacas";
  String meal_path = "assets/images/salad.jpg";
  final testData = ["Example1", "Example2", "Example3", "Example100", "Example1", "Example2", "Example3", "Example100", "Example1", "Example2", "Example3", "Example100"];



  @override
  Widget build(BuildContext context) {
    final _markDownData = testData.map((x) => "- $x\n").reduce((x, y) => "$x$y");

    final meal_image = Container(
      height: MediaQuery.of(context).size.height * 0.24,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(meal_path),
            fit: BoxFit.cover
        )
      ),
    );

    final ingredients_text = Padding(
      padding: EdgeInsets.only(left: 15, top: 10, bottom: 15),
      child: Text(
        "Ingredientes",
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Righteous",
            fontSize: 25,
            color: Theme.of(context).textSelectionColor
        ),
      )
    );

    final instructions_text = Padding(
        padding: EdgeInsets.only(left: 15, top: 15),
        child: Text(
          "Instrucciones",
          textAlign: TextAlign.left,
          style: TextStyle(
              fontFamily: "Righteous",
              fontSize: 25,
              color: Theme.of(context).textSelectionColor
          ),
        )
    );

    final ingredientes = Container(
        padding: EdgeInsets.only(left: 15),
        child: MarkdownBody(
            data: _markDownData,
            styleSheet: MarkdownStyleSheet.fromTheme(Theme.of(context).copyWith(
              textTheme: TextTheme(
                body1: TextStyle(
                    fontFamily: "Righteous",
                    fontSize: 15,
                    color: Theme.of(context).textSelectionColor
                )
              )
            ))
        ),
    );

    final intructions = Padding(
        padding: EdgeInsets.only(left: 15, top: 15),
        child: Text(
          "Monotonectally customize robust leadership skills whereas next-generation outsourcing. Distinctively utilize mission-critical relationships via worldwide functionalities. Energistically transition parallel technologies without go forward technologies. Efficiently predominate multidisciplinary collaboration and idea-sharing with market-driven processes. Phosfluorescently transition intermandated innovation after web-enabled technologies.",
          textAlign: TextAlign.left,
          style: TextStyle(
              fontFamily: "Righteous",
              fontSize: 15,
              color: Theme.of(context).textSelectionColor
          ),
        )
    );


    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        title: Text(
          meal_name,
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Righteous"
          ),
        ),
      ),
      body: Container(
        child: ListView(
//          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            meal_image,
            ingredients_text,
            ingredientes,
            instructions_text,
            intructions
          ],
        ),
      ),
    );
  }

}