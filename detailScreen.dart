import 'package:flutter/material.dart';
import 'model/match.dart';

class DetailScreen extends StatelessWidget {
  final Match matchChosen;
  const DetailScreen({Key? key, required this.matchChosen}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
        SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                      Expanded(
                      flex: 1,
                      child: Image.asset(matchChosen.logoOne)
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      matchChosen.teamOne,
                      style: const TextStyle(fontSize: 16.0),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      matchChosen.scoreOne.toString(),
                      style: const TextStyle(fontSize: 16.0),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Image.asset(matchChosen.logoTwo)
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      matchChosen.teamTwo,
                      style: const TextStyle(fontSize: 16.0),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      matchChosen.scoreTwo.toString(),
                      style: const TextStyle(fontSize: 16.0),
                    ),
                  ),
                ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                        flex: 1,
                        child: Image.asset("image/lineups.png")),
                  ],
                ),
              ],
              ),
            ),
          ),
        );
  }
}