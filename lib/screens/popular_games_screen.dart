import 'package:flutter/material.dart';
import 'package:games_app/screens/action_games.dart';
import 'package:games_app/screens/adventure_games.dart';
import 'package:games_app/screens/sports_games.dart';
import 'package:games_app/screens/strategy_games.dart';

class PopGameScreen extends StatelessWidget {
  const PopGameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_sharp,
              color: Colors.white,
            ),
          ),
          titleTextStyle: const TextStyle(
              color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
          backgroundColor: Colors.deepOrange[400],
          title: const Text("Popular Games"),
        ),
        backgroundColor: Colors.white,
        body: Align(
          alignment: Alignment.center,
          child: Column(children: [
            const SizedBox(
              height: 200.0,
            ),
            ElevatedButton(
              onPressed: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ActionGameScreen()),
                );
              }),
              style: ElevatedButton.styleFrom(
                primary: Colors.deepOrange[400],
                fixedSize: const Size(350, 50),
                textStyle: const TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text(
                "Action Games",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            ElevatedButton(
              onPressed: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AdventureGameScreen()),
                );
              }),
              style: ElevatedButton.styleFrom(
                primary: Colors.deepOrange[400],
                fixedSize: const Size(350, 50),
                textStyle: const TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text(
                "Adventure Money",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            ElevatedButton(
              onPressed: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StrategyGameScreen()),
                );
              }),
              style: ElevatedButton.styleFrom(
                primary: Colors.deepOrange[400],
                fixedSize: const Size(350, 50),
                textStyle: const TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text(
                "Strategy Games",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            ElevatedButton(
              onPressed: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SportsGameScreen()),
                );
              }),
              style: ElevatedButton.styleFrom(
                primary: Colors.deepOrange[400],
                fixedSize: const Size(350, 50),
                textStyle: const TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text(
                "Sports Games",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
