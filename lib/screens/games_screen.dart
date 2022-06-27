import 'package:flutter/material.dart';

class GamesScreen extends StatelessWidget {
  const GamesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Align(
          alignment: Alignment.center,
          child: Column(children: [
            const SizedBox(
              height: 250.0,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    "https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png"),
              ),
              SizedBox(
                width: 40.0,
              ),
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    "https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png"),
              ),
              SizedBox(
                width: 40.0,
              ),
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    "https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png"),
              ),
            ]),
            const SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              onPressed: (() {
                // NoInternet();
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
                "Games",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            ElevatedButton(
              onPressed: (() {
                // NoInternet();
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
                "Play  Now",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
