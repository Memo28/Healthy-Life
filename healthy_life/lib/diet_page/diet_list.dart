import 'package:flutter/material.dart';
import 'diet_overview.dart';


class DietList extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DietList();
  }

}

class _DietList extends State<DietList>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        margin: EdgeInsets.only(top: 270),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
          childAspectRatio: 0.85,
          children: <Widget>[
            DietOverview('Desayuno', 'Tostadas con queso', '5 min'),
            DietOverview('Snack', 'Huevo hervido', '10 min'),
            DietOverview('Comida', 'Pasta verde', '25 min'),
            DietOverview('Desayuno', 'Tostadas con queso', '5 min'),
            DietOverview('Snack', 'Huevo hervido', '10 min'),
            DietOverview('Comida', 'Pasta verde', '25 min'),
          ],
        )
    );
  }

}