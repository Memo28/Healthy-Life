import 'package:flutter/material.dart';

class MainProfile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MainProfile();
  }
}

class _MainProfile extends State<MainProfile> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    String title = "Perfil";

//    Future goToCreateDiet (context) async {
//      Navigator.push(context, MaterialPageRoute(builder: (context) => CreateDiet()));
//    }

    final list_container = Container(
      height: MediaQuery.of(context).size.height * 0.40,
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.42),
      decoration: BoxDecoration(color: Colors.white),
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Entremaiento",
              style: TextStyle(
                color: Theme.of(context).textSelectionColor,
                fontFamily: "Righteous",
              ),
            ),
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(color: Color(0xFFFBFBFB)),
            child: Row(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: 10,
                  margin: EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                    color: Color(0xFFFF6437),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Cuerpo de playa",
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).textSelectionColor,
                      fontFamily: "Righteous",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Plan Alimenticio",
              style: TextStyle(
                color: Theme.of(context).textSelectionColor,
                fontFamily: "Righteous",
              ),
            ),
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(color: Color(0xFFFBFBFB)),
            child: Row(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: 10,
                  margin: EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                    color: Color(0xFFFF6437),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Baja de peso",
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).textSelectionColor,
                      fontFamily: "Righteous",
                    ),
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
            },
            child: Container(
              height: 50,
              margin: EdgeInsets.only(top: 27),
              decoration: BoxDecoration(color: Color(0xFFFBFBFB)),
              child: Row(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: 10,
                    margin: EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                      color: Color(0xFFFF6437),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "Ajustes",
                      style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).textSelectionColor,
                        fontFamily: "Righteous",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );

    final image_user = Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 20),
      height: 150.0,
      child: Icon(
        Icons.person,
        color: Colors.white,
        size: 100,
      ),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 0.5)),
    );

    final user_info = Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 15, bottom: 15, top: 20),
          child: Text(
            "Toñito Perez",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: "Righteous",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            "toñito@gmail.com",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: "Righteous",
            ),
          ),
        )
      ],
    );

    final gradient = Container(
        height: 300.0,
        alignment: Alignment(-0.85, -0.5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25)),
            gradient: LinearGradient(
                colors: [Color(0xFF03DA9E), Color(0xFF03DA9E)],
                begin: FractionalOffset(0.2, 0.0),
                end: FractionalOffset(1.0, 0.6),
                stops: [0.0, 0.6],
                tileMode: TileMode.clamp)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 40.0, left: 15, bottom: 10),
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontFamily: "Righteous",
                ),
              ),
            ),
            Row(
              children: <Widget>[image_user, user_info],
            )
          ],
        ));

    final log_out = InkWell(
        onTap: () {
        },
        child : Container(
          height: 100,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment(0, 0),
          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.88),
          child: Text(
            "Cerrar Sesión",
            style: TextStyle(
              color: Theme.of(context).textSelectionColor,
              fontSize: 20.0,
              fontFamily: "Righteous",
            ),
          ),
        )
    );

    final list = ListView(
      children: <Widget>[
        list_container,
      ],
    );

    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Stack(
          children: <Widget>[
            list,
            gradient,
            log_out
          ],
        ));
    ;
  }
}
