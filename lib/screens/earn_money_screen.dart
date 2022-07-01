import 'package:flutter/material.dart';
import 'package:games_app/screens/eskills_games.dart';
import 'package:games_app/screens/play_to_earn_money.dart';

class EarnMoneyScreen extends StatelessWidget {
  const EarnMoneyScreen({Key? key}) : super(key: key);

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
          title: const Text("Earn Money"),
        ),
        backgroundColor: Colors.white,
        body: Align(
          alignment: Alignment.center,
          child: Column(children: [
            const SizedBox(
              height: 300.0,
            ),
            ElevatedButton(
              onPressed: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const EskillsScreen()),
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
                "E-Skill Games",
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
                  MaterialPageRoute(builder: (context) => const PTEMScreen()),
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
                "Play To Earn games",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
