import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ThankYouScreen extends StatelessWidget {
  const ThankYouScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(
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
                'assets/images/thankyou.png',
                width: 130.0,
                height: 130.0,
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                "Thank You!",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0),
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Text(
                "For Using This App",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 320.0,
              ),
              ElevatedButton(
                  onPressed: (() {
                    SystemNavigator.pop();
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
                    "Thank You",
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ),
      )),
    );
  }
}
