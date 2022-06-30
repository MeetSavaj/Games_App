import 'package:flutter/material.dart';
import 'package:games_app/components/games_data.dart';

class StrategyGameScreen extends StatelessWidget {
  StrategyGameScreen({Key? key}) : super(key: key);
  final List<Map> myProducts =
      List.generate(6, (index) => {"id": index, "name": "Product $index"})
          .toList();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_sharp,
                color: Colors.white,
              ),
            ),
            titleTextStyle: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
            backgroundColor: Colors.deepOrange[400],
            title: const Text("Strategy Games"),
          ),
          backgroundColor: Colors.white,
          body: Align(
            alignment: Alignment.center,
            child: GridView.count(crossAxisCount: 3, shrinkWrap: true,
                // crossAxisSpacing: 2.0,
                // mainAxisSpacing: 8.0,
                children: [
                  GamesAvatar(
                    image:
                        const AssetImage('assets/strategygames/petsrush.png'),
                    name: "Pets Rush",
                  ),
                  GamesAvatar(
                    image: const AssetImage(
                        'assets/strategygames/towercrash3d.png'),
                    name: "Tower Crash 3D",
                  ),
                  GamesAvatar(
                    image: const AssetImage(
                        'assets/strategygames/parkyourcar.png'),
                    name: "Park Your Car",
                  ),
                  GamesAvatar(
                    image: const AssetImage(
                        'assets/strategygames/elementballs.png'),
                    name: "Element Balls",
                  ),
                  GamesAvatar(
                    image:
                        const AssetImage('assets/strategygames/sushiroll.png'),
                    name: "Sushi Roll",
                  ),
                  GamesAvatar(
                    image:
                        const AssetImage('assets/strategygames/citydunk.png'),
                    name: "City Dunk",
                  ),
                ]),
          )),
    );
  }
}
