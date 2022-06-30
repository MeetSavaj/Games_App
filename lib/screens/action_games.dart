import 'package:flutter/material.dart';
import 'package:games_app/components/games_data.dart';

class ActionGameScreen extends StatelessWidget {
  ActionGameScreen({Key? key}) : super(key: key);
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
            title: const Text("Action Games"),
          ),
          backgroundColor: Colors.white,
          body: Align(
            alignment: Alignment.center,
            child: GridView.count(crossAxisCount: 3, shrinkWrap: true,
                // crossAxisSpacing: 2.0,
                // mainAxisSpacing: 8.0,
                children: [
                  GamesAvatar(
                    image: const AssetImage('assets/actiongames/crowdrun.png'),
                    name: "Crowd Run 3D",
                    link:
                        "https://games.cdn.famobi.com/html5games/c/crowd-run-3d/v040/?fg_domain=play.famobi.com&fg_aid=A1000-1&fg_uid=28ab613b-9f40-4ab7-8f09-aa19f32e3660&fg_pid=4638e320-4444-4514-81c4-d80a8c662371&fg_beat=207&original_ref=https%3A%2F%2Fgames.famobi.com%2F",
                  ),
                  GamesAvatar(
                    image:
                        const AssetImage('assets/actiongames/runningjack.png'),
                    name: "Running Jack",
                    link: "runng",
                  ),
                  GamesAvatar(
                    image: const AssetImage('assets/actiongames/kuli.png'),
                    name: "K.U.L.I",
                  ),
                  GamesAvatar(
                    image: const AssetImage(
                        'assets/actiongames/cannonsandsoldeirs.png'),
                    name: "Cannons & Soldiers",
                  ),
                  GamesAvatar(
                    image: const AssetImage(
                        'assets/actiongames/civilizationswar.png'),
                    name: "Civilizations Wars",
                  ),
                  GamesAvatar(
                    image: const AssetImage(
                        'assets/actiongames/taptasticmonsters.png'),
                    name: "Taptastic Monsters",
                  ),
                ]),
          )),
    );
  }
}
