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
                    image: const NetworkImage(
                        "https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png"),
                    name: "Garden Bloom",
                  ),
                  GamesAvatar(
                    image: const NetworkImage(
                        "https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png"),
                    name: "Garden Match 3D",
                  ),
                  GamesAvatar(
                    image: const NetworkImage(
                        "https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png"),
                    name: "The Match-3",
                  ),
                  GamesAvatar(
                    image: const NetworkImage(
                        "https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png"),
                    name: "Diamond Rush",
                  ),
                  GamesAvatar(
                    image: const NetworkImage(
                        "https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png"),
                    name: "Magic Jewels",
                  ),
                  GamesAvatar(
                    image: const NetworkImage(
                        "https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png"),
                    name: "Totemia Cursed Marbles",
                  ),
                ]),
          )),
    );
  }
}
