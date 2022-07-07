import 'package:flutter/material.dart';
import 'package:games_app/components/ads_url.dart';
import 'package:games_app/components/games_data.dart';

class AdventureGameScreen extends StatelessWidget {
  AdventureGameScreen({Key? key}) : super(key: key);
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
            title: const Text("Adventure Games"),
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
                        image: const AssetImage(
                            'assets/adventuregames/escooter.png'),
                        name: "E-Scooter",
                        link:
                            "https://games.cdn.famobi.com/html5games/e/e-scooter/v010/?fg_domain=play.famobi.com&fg_aid=A1000-1&fg_uid=c493535a-9c66-4d47-a3fa-6239aa0e0d52&fg_pid=4638e320-4444-4514-81c4-d80a8c662371&fg_beat=190&original_ref=https%3A%2F%2Fgames.famobi.com%2F",
                      ),
                      GamesAvatar(
                        image: const AssetImage(
                            'assets/adventuregames/traffictom.png'),
                        name: "Traffic Torn",
                        link:
                            "https://games.cdn.famobi.com/html5games/t/traffic-tom/v010/?fg_domain=play.famobi.com&fg_aid=A1000-1&fg_uid=8bf9689b-ca21-4291-af6a-f85c6bcf92f7&fg_pid=4638e320-4444-4514-81c4-d80a8c662371&fg_beat=661&original_ref=https%3A%2F%2Fgames.famobi.com%2F",
                      ),
                      GamesAvatar(
                        image: const AssetImage(
                            'assets/adventuregames/busparking3d.png'),
                        name: "Bus Parking 3D",
                        link:
                            "https://games.cdn.famobi.com/html5games/b/bus-parking-3d/v080/?fg_domain=play.famobi.com&fg_aid=A1000-1&fg_uid=0a709615-79da-41b4-8d52-a0034b02435b&fg_pid=4638e320-4444-4514-81c4-d80a8c662371&fg_beat=661&original_ref=https%3A%2F%2Fgames.famobi.com%2F",
                      ),
                      GamesAvatar(
                        image: const AssetImage(
                            'assets/adventuregames/highwayriderextreme.png'),
                        name: "Highway Rider Extreme",
                        link:
                            "https://games.cdn.famobi.com/html5games/h/highway-rider-extreme/v060/?fg_domain=play.famobi.com&fg_aid=A1000-1&fg_uid=83175bfa-1c89-46d9-91da-7ea5fc7a642f&fg_pid=4638e320-4444-4514-81c4-d80a8c662371&fg_beat=661&original_ref=https%3A%2F%2Fgames.famobi.com%2F",
                      ),
                      GamesAvatar(
                        image: const AssetImage(
                            'assets/adventuregames/thugracer.png'),
                        name: "Thug Racer",
                        link:
                            "https://games.cdn.famobi.com/html5games/t/thug-racer/v330/?fg_domain=play.famobi.com&fg_aid=A1000-1&fg_uid=c3a9bc6a-f9cf-4bcd-bd12-b1c5fcb4dc5d&fg_pid=4638e320-4444-4514-81c4-d80a8c662371&fg_beat=661&original_ref=https%3A%2F%2Fgames.famobi.com%2F",
                      ),
                      GamesAvatar(
                        image: const AssetImage(
                            'assets/adventuregames/racingmonsterstrucks.png'),
                        name: "Racing Monster Trucks",
                        link:
                            "https://games.cdn.famobi.com/html5games/a/adventure-drivers/v060/?fg_domain=play.famobi.com&fg_aid=A1000-1&fg_uid=7adef9f1-9ddd-437a-b5ee-196da61ba5c7&fg_pid=4638e320-4444-4514-81c4-d80a8c662371&fg_beat=659&original_ref=https%3A%2F%2Fgames.famobi.com%2F",
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
