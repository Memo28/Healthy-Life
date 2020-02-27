import 'package:flutter/material.dart';
import 'main_diet.dart';

class CreateDiet extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CreateDiet();
  }

}

class _CreateDiet extends State<CreateDiet>{
  String _selected = 'Seleccionar objetivo';

  @override
  Widget build(BuildContext context) {

    Future goToDiet(context) async {
      Navigator.push(context, MaterialPageRoute(builder: (context) => MainDiet()));
    }

    final imageText = Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 15, bottom: 15),
      child: Text(
        "Foto de la dieta",
        style: TextStyle(
            fontSize: 20,
            fontFamily: "Righteous",
            color: Theme.of(context).textSelectionColor
        ),
      ),
    );

    final imagePicker = InkWell(
        onTap: (){
          print('PK');
        },
        child: Container(
          height: 150.0,
          margin: EdgeInsets.only(left: MediaQuery.of(context).size.width  * 0.1, right: MediaQuery.of(context).size.width  * 0.1),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/diet.jpg'),
                fit: BoxFit.fitWidth
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        )
    );

    final inputWorkoutName = Container(
      width: MediaQuery.of(context).size.width * 0.85,
      alignment: Alignment.center,
      margin: EdgeInsets.only(bottom: 10.0, top: 30 , left: 30, right: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TextFormField(
        decoration: InputDecoration(
            border: InputBorder.none,
            labelText: "Nombre de la dieta",
            labelStyle: TextStyle(
                fontFamily: "Righteous",
                fontWeight: FontWeight.w100,
                color: Theme.of(context).textSelectionColor
            ),
            prefixIcon: Icon(Icons.fitness_center),
            contentPadding: EdgeInsets.only(top: 10, right: 20, bottom: 10)
        ),
      ),
    );

    final selectTarget = Container(
        margin: EdgeInsets.only(bottom: 10.0, top: 30 , left: 30, right: 30),
        child: Container(
//        color: Colors.indigo,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8)
          ),
          child: DropdownButton(
              underline: SizedBox(),
              isExpanded: true, //Adding this property, does the magic
              value: _selected,
              disabledHint: Text("You can't select anything."),
              items: ['Seleccionar objetivo','Bajar de peso', 'Ganar musculo']
                  .map((value){
                return DropdownMenuItem(
                    value: value,
                    child : Center(
                      child: Text(
                        value,
                        style: TextStyle(
                            fontFamily: "Righteous",
                            color: Theme.of(context).textSelectionColor
                        ),
                      ),
                    )
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selected = value;
                });
              }),
        )
    );

    final inputNumberOfWeeks = Container(
      width: MediaQuery.of(context).size.width * 0.85,
      alignment: Alignment.center,
      margin: EdgeInsets.only(bottom: 10.0, top: 30 , left: 30, right: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TextFormField(
        decoration: InputDecoration(
            border: InputBorder.none,
            labelText: "Numero de Semanas",
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

    final restrictions = Container(
      width: MediaQuery.of(context).size.width * 0.85,
      alignment: Alignment.center,
      margin: EdgeInsets.only(bottom: 10.0, top: 30 , left: 30, right: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TextFormField(
        decoration: InputDecoration(
            border: InputBorder.none,
            labelText: "Alergias",
            labelStyle: TextStyle(
                fontFamily: "Righteous",
                fontWeight: FontWeight.w100,
                color: Theme.of(context).textSelectionColor
            ),
            prefixIcon: Icon(Icons.shopping_cart),
            contentPadding: EdgeInsets.only(top: 10, right: 20, bottom: 10)
        ),
      ),
    );


    final submitButton = Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: 50,
        margin: EdgeInsets.only(top: 60 , left: 30, right: 30, bottom: 20),
        decoration: BoxDecoration(
        ),
        child: RaisedButton(
          onPressed: (){
//            goToDiet(context);
          },
          child: Text("Generar",
            style: TextStyle(
                fontFamily: "Righteous",
                fontSize: 17
            ),
          ),
          color: Theme.of(context).primaryColor,
          textColor: Colors.white,
        )
    );



    // TODO: implement build
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: Colors.white
        ),
        title: Text(
          "Nuevo plan alimenticio",
          style: TextStyle(
              color: Colors.white,
              fontFamily: "Righteous"
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          imageText,
          imagePicker,
          inputWorkoutName,
          selectTarget,
          inputNumberOfWeeks,
          restrictions,
          submitButton
        ],
      ),
    );
  }

}