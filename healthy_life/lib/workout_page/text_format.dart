import 'package:flutter/material.dart';

class TextFormat extends StatelessWidget{
  String text = "Text";
  double font_size = 16.0;
  int color = 0;


  TextFormat(this.text, this.font_size, this.color);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 2.0, right: 2.0),
      child: Text(
        text,
        style: TextStyle(
          color: color == 0 ? Colors.white : Theme.of(context).textSelectionColor,
          fontFamily: "Righteous",
          fontSize: font_size
        ),
      ),
    );
  }

}