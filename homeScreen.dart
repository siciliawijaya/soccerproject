import 'package:flutter/material.dart';
import 'model/match.dart';
import 'detailScreen.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
           title: const Text("Daftar Pertandingan Liverpool"),
      ),
      body: SafeArea(
          child: ListView.builder(
                itemCount: matchList.length,
                itemBuilder: (context, index) {
                  final Match matches = matchList[index];

                  return InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return DetailScreen(matchChosen: matches);
                          },
                        ),
                      );
                    },
                    child: SingleChildScrollView(
                      child: Card(
                          margin: const EdgeInsets.symmetric(vertical:1.0),
                          child: Column(
                            children: <Widget>[
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Expanded(
                                        flex: 1,
                                        child: Image.asset(matches.logoOne)
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                      matches.teamOne,
                                      style: const TextStyle(fontSize: 16.0),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                      matches.scoreOne.toString(),
                                      style: const TextStyle(fontSize: 16.0),
                                      ),
                                    ),
                                    const Icon(Icons.favorite),
                                  ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Expanded(
                                      flex: 1,
                                      child: Image.asset(matches.logoTwo)
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Text(
                                      matches.teamTwo,
                                      style: const TextStyle(fontSize: 16.0),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Text(
                                      matches.scoreTwo.toString(),
                                      style: const TextStyle(fontSize: 16.0),
                                    ),
                                  ),

                                ],
                              ),
                          ],
                        ),
                      ),
                    ),
                  );
                }
          ),
        ),
    );
  }
}