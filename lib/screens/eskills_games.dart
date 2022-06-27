import 'package:flutter/material.dart';

class EskillsScreen extends StatelessWidget {
  const EskillsScreen({Key? key}) : super(key: key);

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
              color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
          backgroundColor: Colors.deepOrange[400],
          title: const Text("E-Skills Games"),
        ),
        backgroundColor: Colors.white,
        body: Align(
          alignment: Alignment.center,
          child: Column(children: [
            const SizedBox(
              height: 200.0,
            ),
            ElevatedButton(
              onPressed: (() {}),
              style: ElevatedButton.styleFrom(
                primary: Colors.deepOrange[400],
                fixedSize: const Size(300, 55),
                textStyle: const TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: Row(children: const [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png"),
                ),
                SizedBox(
                  width: 30.0,
                ),
                Text(
                  "Earn Cash",
                  style: TextStyle(color: Colors.white),
                ),
              ]),
            ),
            const SizedBox(
              height: 15.0,
            ),
            ElevatedButton(
              onPressed: (() {}),
              style: ElevatedButton.styleFrom(
                primary: Colors.deepOrange[400],
                fixedSize: const Size(300, 55),
                textStyle: const TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: Row(children: const [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png"),
                ),
                SizedBox(
                  width: 30.0,
                ),
                Text(
                  "More Money",
                  style: TextStyle(color: Colors.white),
                ),
              ]),
            ),
            const SizedBox(
              height: 15.0,
            ),
            ElevatedButton(
              onPressed: (() {}),
              style: ElevatedButton.styleFrom(
                primary: Colors.deepOrange[400],
                fixedSize: const Size(300, 55),
                textStyle: const TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: Row(children: const [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png"),
                ),
                SizedBox(
                  width: 30.0,
                ),
                Text(
                  "Win Coin",
                  style: TextStyle(color: Colors.white),
                ),
              ]),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
              CircleAvatar(
                radius: 40.0,
                backgroundImage: NetworkImage(
                    "https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png"),
              ),
              SizedBox(
                width: 30.0,
              ),
              CircleAvatar(
                radius: 40.0,
                backgroundImage: NetworkImage(
                    "https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png"),
              ),
              SizedBox(
                width: 30.0,
              ),
              CircleAvatar(
                radius: 40.0,
                backgroundImage: NetworkImage(
                    "https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png"),
              ),
            ]),
          ]),
        ),
      ),
    );
  }
}
