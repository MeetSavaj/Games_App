import 'package:flutter/material.dart';

class NoIntScreen extends StatelessWidget {
  const NoIntScreen({Key? key}) : super(key: key);

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
                onPressed: (() {}),
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
