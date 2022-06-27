import 'package:flutter/material.dart';

class LangScreen extends StatelessWidget {
  const LangScreen({Key? key}) : super(key: key);

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
              height: 200.0,
            ),
            const Text(
              "Select Language",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
            const Text(
              "Choose the language you want to processed with...",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            OutlinedButton(
              child: const Text(
                "Outline Button",
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    ));
  }
}
