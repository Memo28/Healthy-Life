import 'package:flutter/material.dart';
import 'workout_page/main_workout.dart';
import 'diet_page/main_diet.dart';

class MainScreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MainScreen();
  }

}

class _MainScreen extends State<MainScreen>{
  int indexTap = 1;

  final List<Widget> screenList = [
    MainDiet(),
    MainWorkout(),
    MainWorkout()
  ];

  void onTapped (int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: screenList[indexTap],
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            primaryColor: Theme.of(context).primaryColor,
            canvasColor: Colors.white
          ),
          child: BottomNavigationBar(
              currentIndex: indexTap,
              onTap: onTapped,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.local_dining),
                  title: Text("Dieta")
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.fitness_center),
                    title: Text("Entrenamiento")
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    title: Text("Perfil")
                )
              ],

          )
      ),
    );
  }

}