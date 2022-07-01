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
              onPressed: () {
                Navigator.pop(context);
              },
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
                    link:
                        "https://games.cdn.famobi.com/html5games/p/pets-rush/v130/?fg_domain=play.famobi.com&fg_aid=A1000-1&fg_uid=62afc9fc-b8ec-41b7-9ce9-8194828d12d4&fg_pid=4638e320-4444-4514-81c4-d80a8c662371&fg_beat=685&original_ref=https%3A%2F%2Fgames.famobi.com%2F",
                  ),
                  GamesAvatar(
                    image: const AssetImage(
                        'assets/strategygames/towercrash3d.png'),
                    name: "Tower Crash 3D",
                    link:
                        "https://games.cdn.famobi.com/html5games/t/tower-crash-3d/v290/?fg_domain=play.famobi.com&fg_aid=A1000-1&fg_uid=68a7c06e-ec27-4fa4-99a5-a5e9702ac4ef&fg_pid=4638e320-4444-4514-81c4-d80a8c662371&fg_beat=686&original_ref=https%3A%2F%2Fgames.famobi.com%2F",
                  ),
                  GamesAvatar(
                    image: const AssetImage(
                        'assets/strategygames/parkyourcar.png'),
                    name: "Park Your Car",
                    link:
                        "https://games.cdn.famobi.com/html5games/p/park-your-car/4-477518/?fg_domain=play.famobi.com&fg_aid=A1000-1&fg_uid=c01f027d-0eb4-4100-99a4-36320739c91d&fg_pid=4638e320-4444-4514-81c4-d80a8c662371&fg_beat=686&original_ref=https%3A%2F%2Fgames.famobi.com%2F",
                  ),
                  GamesAvatar(
                    image: const AssetImage(
                        'assets/strategygames/elementballs.png'),
                    name: "Element Balls",
                    link:
                        "https://games.cdn.famobi.com/html5games/e/element-balls/v070/?fg_domain=play.famobi.com&fg_aid=A1000-1&fg_uid=a8640189-bef5-4c27-8136-5ca001b11779&fg_pid=4638e320-4444-4514-81c4-d80a8c662371&fg_beat=687&original_ref=https%3A%2F%2Fgames.famobi.com%2F",
                  ),
                  GamesAvatar(
                    image:
                        const AssetImage('assets/strategygames/sushiroll.png'),
                    name: "Sushi Roll",
                    link:
                        "https://games.cdn.famobi.com/html5games/s/sushi-roll/v240/?fg_domain=play.famobi.com&fg_aid=A1000-1&fg_uid=18e7034e-d066-45e1-b67c-ee36ddae7cf9&fg_pid=4638e320-4444-4514-81c4-d80a8c662371&fg_beat=687&original_ref=https%3A%2F%2Fgames.famobi.com%2F",
                  ),
                  GamesAvatar(
                    image:
                        const AssetImage('assets/strategygames/citydunk.png'),
                    name: "City Dunk",
                    link:
                        "https://games.cdn.famobi.com/html5games/c/city-dunk/v280/?fg_domain=play.famobi.com&fg_aid=A1000-1&fg_uid=30f1d7c4-2724-4cd3-b4d0-f67a2efa8e61&fg_pid=4638e320-4444-4514-81c4-d80a8c662371&fg_beat=687&original_ref=https%3A%2F%2Fgames.famobi.com%2F",
                  ),
                ]),
          )),
    );
  }
}
