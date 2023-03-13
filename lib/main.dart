import 'package:car_app/rountes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './screns/HomeScreen.dart';
import './rountes.dart';
void main() {
  return runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: generateRoute,
    );
  }
}
