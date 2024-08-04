import 'package:flutter/material.dart';

import 'gradiant_container.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(
    color1:Colors.blue.shade900 ,
    color2:Colors.blue.shade300 ,

        ),
      ),
    );
  }
}
