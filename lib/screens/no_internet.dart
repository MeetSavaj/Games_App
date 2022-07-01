import 'dart:io';
import 'package:flutter/material.dart';
import 'package:games_app/screens/launch_screen.dart';

class NoIntScreen extends StatefulWidget {
  const NoIntScreen({Key? key}) : super(key: key);

  @override
  State<NoIntScreen> createState() => _NoIntScreenState();
}

class _NoIntScreenState extends State<NoIntScreen> {
  // ignore: non_constant_identifier_names
  bool ActiveConnection = false;
  String T = "";
  // ignore: non_constant_identifier_names
  Future CheckUserConnection() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        setState(() {
          ActiveConnection = true;
        });
      }
    } on SocketException catch (_) {
      setState(() {
        ActiveConnection = false;
      });
    }
  }

  @override
  void initState() {
    CheckUserConnection();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            const SizedBox(
              height: 150.0,
            ),
            Image.asset(
              'assets/images/no_internet.png',
              width: 200.0,
              height: 200.0,
            ),
            const SizedBox(
              height: 30.0,
            ),
            const Text(
              "No Internet Connnection",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
            const SizedBox(
              height: 8.0,
            ),
            const Text(
              "Make sure internet is On!",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 200.0,
            ),
            ElevatedButton(
                onPressed: (() {
                  CheckUserConnection();
                  ActiveConnection
                      ? Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LaunchScreen()),
                        )
                      : Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NoIntScreen()),
                        );
                }),
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepOrange[400],
                  fixedSize: const Size(150, 40),
                  textStyle: const TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold),
                  shadowColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: const Text(
                  "Try Again",
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    ));
  }
}
