import 'package:flutter/material.dart';


class RegisterPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RegisterPage();
  }

}

class _RegisterPage extends State<RegisterPage>{
  @override
  Widget build(BuildContext context) {

    Future goToWorkout(context) async {
      Navigator.push(context, MaterialPageRoute(builder: (context) => WorkoutPage()));
    }

    // TODO: implement build
    final app_name = Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      margin: EdgeInsets.only(top: 80),
      alignment: Alignment.center,
      child: Text(
        "HEALTHY LIFE",
        style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 40,
            fontFamily: "Righteous",
            color: Theme.of(context).primaryColor
        ),
      ),
    );

    final image_picker = InkWell(
      child: Container(
        margin:
        EdgeInsets.only(bottom: 10.0, left: 20.0, right: 20.0),
        height: 150.0,
        width: 150.0,
        child: Icon(
          Icons.person,
          color: Theme.of(context).textSelectionColor,
          size: 100,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(180.0),
            border: Border.all(
                color: Theme.of(context).textSelectionColor,
                width: 0.5
            )
        ),
      ),
    );

    final perfil_text = Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Text(
        "Foto de Perfil",
        style: TextStyle(
            fontSize: 15,
            fontFamily: "Righteous",
            color: Theme.of(context).textSelectionColor
        ),
      ),
    );

    final input_name = Container(
      width: MediaQuery.of(context).size.width * 0.85,
      alignment: Alignment.center,
      margin: EdgeInsets.only(bottom: 10.0, top: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: "Nombre completo",
          labelStyle: TextStyle(
              fontFamily: "Righteous",
              fontWeight: FontWeight.w100,
              color: Theme.of(context).textSelectionColor
          ),
          prefixIcon: Icon(Icons.person),
          contentPadding: EdgeInsets.only(top: 10, right: 20, bottom: 10)
        ),
      ),
    );

    final input_age = Container(
      width: MediaQuery.of(context).size.width * 0.85,
      alignment: Alignment.center,
      margin: EdgeInsets.only(bottom: 10.0, top: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TextFormField(
        decoration: InputDecoration(
            border: InputBorder.none,
            labelText: "Edad",
            labelStyle: TextStyle(
                fontFamily: "Righteous",
                fontWeight: FontWeight.w100,
                color: Theme.of(context).textSelectionColor
            ),
            prefixIcon: Icon(Icons.calendar_today),
            contentPadding: EdgeInsets.only(top: 10, right: 20, bottom: 10)
        ),
      ),
    );

    final input_weight = Container(
      width: MediaQuery.of(context).size.width * 0.37,
      margin: EdgeInsets.only(bottom: 10.0, top: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TextFormField(
        decoration: InputDecoration(
            border: InputBorder.none,
            labelText: "Peso",
            labelStyle: TextStyle(
                fontFamily: "Righteous",
                fontWeight: FontWeight.w100,
                color: Theme.of(context).textSelectionColor
            ),
            prefixIcon: Icon(Icons.crop_landscape),
            contentPadding: EdgeInsets.only(top: 10, right: 20, bottom: 10)
        ),
      ),
    );
    
    final input_height = Container(
      width: MediaQuery.of(context).size.width * 0.37,
      margin: EdgeInsets.only(bottom: 10.0, top: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TextFormField(
        decoration: InputDecoration(
            border: InputBorder.none,
            labelText: "Altura",
            labelStyle: TextStyle(
                fontFamily: "Righteous",
                fontWeight: FontWeight.w100,
                color: Theme.of(context).textSelectionColor
            ),
            prefixIcon: Icon(Icons.accessibility),
            contentPadding: EdgeInsets.only(top: 10, right: 20, bottom: 10)
        ),
      ),
    );

    final measures = Container(
      margin: EdgeInsets.only(left: 30, right: 31),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          input_weight,
          input_height
        ],
      ),
    );

    final submit_button = Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: 50,
        margin: EdgeInsets.only(top: 60),
        decoration: BoxDecoration(
        ),
        child: RaisedButton(
          onPressed: (){
            goToWorkout(context)
          },
          child: Text("Siguiente",
            style: TextStyle(
              fontFamily: "Righteous",
              fontSize: 17
            ),
          ),
          color: Theme.of(context).primaryColor,
          textColor: Colors.white,
      )
    );


    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Column(
          children: <Widget>[
            app_name,
            image_picker,
            perfil_text,
            input_name,
            input_age,
            measures,
            submit_button
          ],
        ),
    );
  }

}