import 'package:flutter/material.dart';
import 'package:interface_1/models/music_model.dart';
import 'package:interface_1/screens/starting_page.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: StartingPage(),
    );
  }
  

}
