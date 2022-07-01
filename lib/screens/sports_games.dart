import 'package:flutter/material.dart';
import 'package:games_app/components/games_data.dart';

class SportsGameScreen extends StatelessWidget {
  SportsGameScreen({Key? key}) : super(key: key);
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
            title: const Text("Sports Games"),
          ),
          backgroundColor: Colors.white,
          body: Align(
            alignment: Alignment.center,
            child: GridView.count(crossAxisCount: 3, shrinkWrap: true,
                // crossAxisSpacing: 0.0,
                // mainAxisSpacing: 8.0,
                children: [
                  GamesAvatar(
                    image:
                        const AssetImage('assets/sportsgames/gardenbloom.png'),
                    name: "Garden Bloom",
                    link:
                        "https://games.cdn.famobi.com/html5games/g/garden-bloom/v360/?fg_domain=play.famobi.com&fg_aid=A1000-1&fg_uid=3f504f07-d674-4a4d-a02e-89e7414d8f26&fg_pid=4638e320-4444-4514-81c4-d80a8c662371&fg_beat=655&original_ref=https%3A%2F%2Fgames.famobi.com%2F",
                  ),
                  GamesAvatar(
                    image: const AssetImage(
                        'assets/sportsgames/gardenmatch3d.png'),
                    name: "Garden Match 3D",
                    link:
                        "https://games.cdn.famobi.com/html5games/g/garden-match-3d/v090/?fg_domain=play.famobi.com&fg_aid=A1000-1&fg_uid=19aabdea-15df-4a5f-a7d2-df389b572ecb&fg_pid=4638e320-4444-4514-81c4-d80a8c662371&fg_beat=658&original_ref=https%3A%2F%2Fgames.famobi.com%2F",
                  ),
                  GamesAvatar(
                    image: const AssetImage('assets/sportsgames/thematch3.png'),
                    name: "The Match-3",
                    link:
                        "https://games.cdn.famobi.com/html5games/p/pirates-the-match-3/v300/?fg_domain=play.famobi.com&fg_aid=A1000-1&fg_uid=cbca0811-a161-4040-81ad-29e8f4d8d772&fg_pid=4638e320-4444-4514-81c4-d80a8c662371&fg_beat=658&original_ref=https%3A%2F%2Fgames.famobi.com%2F",
                  ),
                  GamesAvatar(
                    image:
                        const AssetImage('assets/sportsgames/diamondrush.png'),
                    name: "Diamond Rush",
                    link:
                        "https://games.cdn.famobi.com/html5games/d/diamond-rush/v140/?fg_domain=play.famobi.com&fg_aid=A1000-1&fg_uid=395b0746-6d0e-4ec8-b11c-18cab8009214&fg_pid=4638e320-4444-4514-81c4-d80a8c662371&fg_beat=658&original_ref=https%3A%2F%2Fgames.famobi.com%2F",
                  ),
                  GamesAvatar(
                    image:
                        const AssetImage('assets/sportsgames/magicjewels.png'),
                    name: "Magic Jewels",
                    link:
                        "https://games.cdn.famobi.com/html5games/m/magic-jewels/v270/?fg_domain=play.famobi.com&fg_aid=A1000-1&fg_uid=a11ff295-0a7f-4c57-8411-28168625c36d&fg_pid=4638e320-4444-4514-81c4-d80a8c662371&fg_beat=659&original_ref=https%3A%2F%2Fgames.famobi.com%2F",
                  ),
                  GamesAvatar(
                    image: const AssetImage(
                        'assets/sportsgames/totemiacursedmarbles.png'),
                    name: "Totemia Cursed Marbles",
                    link:
                        "https://games.cdn.famobi.com/html5games/t/totemia-cursed-marbles/v230/?fg_domain=play.famobi.com&fg_aid=A1000-1&fg_uid=ca588700-4790-46f1-82a2-cef934fd368a&fg_pid=4638e320-4444-4514-81c4-d80a8c662371&fg_beat=659&original_ref=https%3A%2F%2Fgames.famobi.com%2F",
                  ),
                ]),
          )),
    );
  }
}
