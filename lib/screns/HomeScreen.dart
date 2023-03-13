import 'package:car_app/data.dart';
import 'package:car_app/screns/secondScreen.dart';
import '../servis/function.dart';
import '../models/food.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String rounName = "/";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Car> allFoods = getAllFoods();
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 187, 213, 235),
        body: ListView.builder(
            itemCount: allFoods.length,
            itemBuilder: (context, index) => Container(
                  alignment: Alignment.center,
                  height: 200,
                  width: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Image.asset(
                            'images/${carImage[index]}',
                            fit: BoxFit.cover,
                            width: 250,
                            height: 130,
                          )),
                      SizedBox(
                          width: 100,
                          height: 25,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, MyWidget.routName,
                                    arguments: allFoods[index]);
                              },
                              child: Text("Buy Now")))
                    ],
                  ),
                )));
  }
}