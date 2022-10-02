import 'package:flutter/material.dart';
import 'model/match.dart';
import 'homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Daftar Pertandingan Liverpool",
      theme: ThemeData(

        primarySwatch: Colors.amber,
      ),
      home: const HomeScreen(),
    );
  }
}


