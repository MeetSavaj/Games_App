import 'package:flutter/material.dart';
import 'package:games_app/components/ads_url.dart';
import 'package:games_app/components/interstitial_ads.dart';
import 'package:games_app/screens/home_screen.dart';
import 'package:games_app/screens/thank_you.dart';

class GamesScreen extends StatefulWidget {
  const GamesScreen({Key? key}) : super(key: key);

  @override
  State<GamesScreen> createState() => _GamesScreenState();
}

class _GamesScreenState extends State<GamesScreen> {
  @override
  Widget build(BuildContext context) {
    Future<bool> showExitPopup() async {
      return await showDialog(
            //show confirm dialogue
            //the return value will be from "Yes" or "No" options
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Exit App'),
              content: const Text('Do you want to exit an App?'),
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () => Navigator.pop(context),

                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrange[400],
                        fixedSize: const Size(80, 30),
                        textStyle: const TextStyle(
                            fontSize: 18,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      //return false when click on "NO"
                      child: const Text(
                        'No',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ThankYouScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrange[400],
                        fixedSize: const Size(80, 30),
                        textStyle: const TextStyle(
                            fontSize: 18,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      //return true when click on "Yes"
                      child: const Text(
                        'Yes',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ) ??
          false; //if showDialouge had returned null, then return false
    }

    return WillPopScope(
      onWillPop: () => showExitPopup(),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Align(
            alignment: Alignment.center,
            child: Column(children: [
              GestureDetector(
                onTap: () => url(),
                child: Image.asset(
                  "assets/nativeads/top_ads.png",
                  scale: 0.9,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                GestureDetector(
                  onTap: () => url(),
                  child: const CircleAvatar(
                      radius: 40.0,
                      backgroundImage:
                          AssetImage("assets/gamesscreen/50k.png")),
                ),
                const SizedBox(
                  width: 40.0,
                ),
                GestureDetector(
                  onTap: () => url(),
                  child: const CircleAvatar(
                      radius: 40.0,
                      backgroundImage:
                          AssetImage("assets/gamesscreen/iplquiz.png")),
                ),
                const SizedBox(
                  width: 40.0,
                ),
                GestureDetector(
                  onTap: () => url(),
                  child: const CircleAvatar(
                      radius: 40.0,
                      backgroundImage:
                          AssetImage("assets/gamesscreen/cricketquiz.png")),
                ),
              ]),
              const SizedBox(
                height: 30.0,
              ),
              ElevatedButton(
                onPressed: (() {
                  showinterstitialads();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
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
                  "Games",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              ElevatedButton(
                onPressed: (() {
                  showinterstitialads();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
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
                  "Play  Now",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              GestureDetector(
                onTap: () => url(),
                child: Image.asset(
                  "assets/nativeads/mega_quiz_bottom.png",
                  scale: 1.0,
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
