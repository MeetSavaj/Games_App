import 'package:flutter/material.dart';
import 'package:games_app/components/ads_url.dart';
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
            title: const Text("Action Games"),
          ),
          backgroundColor: Colors.white,
          body: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                GestureDetector(
                  onTap: () => url(),
                  child: Image.asset(
                    "assets/nativeads/top_ads.png",
                    scale: 0.9,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                GridView.count(crossAxisCount: 3, shrinkWrap: true,
                    // crossAxisSpacing: 2.0,
                    // mainAxisSpacing: 8.0,
                    children: [
                      GamesAvatar(
                        image:
                            const AssetImage('assets/actiongames/crowdrun.png'),
                        name: "Crowd Run 3D",
                        link:
                            "https://games.cdn.famobi.com/html5games/c/crowd-run-3d/v040/?fg_domain=play.famobi.com&fg_aid=A1000-1&fg_uid=28ab613b-9f40-4ab7-8f09-aa19f32e3660&fg_pid=4638e320-4444-4514-81c4-d80a8c662371&fg_beat=207&original_ref=https%3A%2F%2Fgames.famobi.com%2F",
                      ),
                      GamesAvatar(
                        image: const AssetImage(
                            'assets/actiongames/runningjack.png'),
                        name: "Running Jack",
                        link:
                            "https://games.cdn.famobi.com/html5games/k/kumba-kool/v120/?fg_domain=play.famobi.com&fg_aid=A1000-1&fg_uid=16afbe05-a248-4978-b982-57cd59f5d615&fg_pid=4638e320-4444-4514-81c4-d80a8c662371&fg_beat=648&original_ref=https%3A%2F%2Fgames.famobi.com%2F",
                      ),
                      GamesAvatar(
                        image: const AssetImage('assets/actiongames/kuli.png'),
                        name: "K.U.L.I",
                        link:
                            "https://games.cdn.famobi.com/html5games/z/zombies-eat-my-stocking/v5/?fg_domain=play.famobi.com&fg_aid=A1000-1&fg_uid=10158f0e-0fd1-4f73-b38c-108a3f684146&fg_pid=4638e320-4444-4514-81c4-d80a8c662371&fg_beat=649&original_ref=https%3A%2F%2Fgames.famobi.com%2F",
                      ),
                      GamesAvatar(
                        image: const AssetImage(
                            'assets/actiongames/cannonsandsoldeirs.png'),
                        name: "Cannons & Soldiers",
                        link:
                            "https://games.cdn.famobi.com/html5games/c/cannons-and-soldiers/v6/?fg_domain=play.famobi.com&fg_aid=A1000-1&fg_uid=f1baf796-217a-4d1b-bb6e-77924caf7db5&fg_pid=4638e320-4444-4514-81c4-d80a8c662371&fg_beat=649&original_ref=https%3A%2F%2Fgames.famobi.com%2F",
                      ),
                      GamesAvatar(
                        image: const AssetImage(
                            'assets/actiongames/civilizationswar.png'),
                        name: "Civilizations Wars",
                        link:
                            "https://games.cdn.famobi.com/html5games/c/civilizations-wars-all-stars/v130/?fg_domain=play.famobi.com&fg_aid=A1000-1&fg_uid=2001681a-0f53-4691-9318-04e419ac7c0c&fg_pid=4638e320-4444-4514-81c4-d80a8c662371&fg_beat=649&original_ref=https%3A%2F%2Fgames.famobi.com%2F",
                      ),
                      GamesAvatar(
                        image: const AssetImage(
                            'assets/actiongames/taptasticmonsters.png'),
                        name: "Taptastic Monsters",
                        link:
                            "https://games.cdn.famobi.com/html5games/t/taptastic-monsters/v5/?fg_domain=play.famobi.com&fg_aid=A1000-1&fg_uid=f262b333-613a-44a1-825a-76878708ac94&fg_pid=4638e320-4444-4514-81c4-d80a8c662371&fg_beat=650&original_ref=https%3A%2F%2Fgames.famobi.com%2F",
                      ),
                    ]),
                const SizedBox(
                  height: 10.0,
                ),
                GestureDetector(
                  onTap: () => url(),
                  child: Image.asset(
                    "assets/nativeads/cricket_quiz_bottom.png",
                    scale: 1.0,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
