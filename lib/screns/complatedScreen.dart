import 'package:car_app/screns/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class ComplatedPage extends StatelessWidget {
  static String routName = "//";
  const ComplatedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Complated!!!",
              style: TextStyle(
                  color: Colors.red, fontSize: 30, fontWeight: FontWeight.w600),
            ),
          ),
          ElevatedButton(onPressed: () {
            Navigator.pushReplacementNamed(context, "/");
          },
          child: Text("Home"),
          )
        ],
      )),
    );
  }
}
