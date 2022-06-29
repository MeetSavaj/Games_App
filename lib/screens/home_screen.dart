import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          titleTextStyle: const TextStyle(
              color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
          backgroundColor: Colors.deepOrange[400],
          title: const Text("Home"),
        ),
        backgroundColor: Colors.white,
        body: Align(
          alignment: Alignment.center,
          child: Column(children: [
            const SizedBox(
              height: 300.0,
            ),
            ElevatedButton(
              onPressed: (() {}),
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
                "Popular Games",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            ElevatedButton(
              onPressed: (() {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const CheckInt()),
                // );
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
                "Earn Money",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
