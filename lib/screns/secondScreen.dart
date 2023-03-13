import 'package:flutter/material.dart';
import '../models/food.dart';
import './registratsiya.dart';

class MyWidget extends StatelessWidget {
  final Car car;
  static String routName = "/second";
  const MyWidget({super.key, required this.car});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 176, 175, 175),
      body: Column(
        children: [
          Image.asset("images/${car.images}"),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Car of super speed ----------  ${car.speed}",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "\"Changing Lanes” is the official podcast . Featuring new episodes each week, in which our hosts take you on exciting journeys and talk about innovative  technologies,lifestyle",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "The lightest weight of the car --------    ${car.load}",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              "Can I get the engine of the car? ----- ${car.engine}",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              "Can I get the engine of the Car!!! ----- ${car.NumberOfSeats}",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Their hearts beat faster. Fear begins to prickle through their veins. It’s now or never. Their only chance. Joy and Forever know their decision is irreversible. But their only thought is escape. The dimly lit dance club in the industrial district below the Hollywood Hills is a gilded cage for them. For him as a dancer. For her as a janitor. Both stranded in the dark shadows.",
              style: TextStyle(fontSize: 15),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Back")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,MyWidget1.routName
                    );
                  },
                  child: Text("by Now ${car.load} \$"))
            ],
          )
        ],
      ),
    );
  }
}
