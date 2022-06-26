import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      // <-- Delay here
      setState(() {
        _loading = false; // <-- Code run after delay
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepOrange[100],
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Color.fromARGB(255, 246, 144, 112),
            ],
          )),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: _loading
                      ? const SizedBox(
                          height: 60,
                          width: 60,
                          child: LoadingIndicator(
                            indicatorType: Indicator.ballSpinFadeLoader,
                            colors: [Colors.white],
                            strokeWidth: 1,
                          ),
                        )
                      : ElevatedButton(
                          onPressed: (() {}),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            fixedSize: const Size(140, 30),
                            textStyle: const TextStyle(
                                color: Colors.orange,
                                fontSize: 18,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold),
                            shadowColor: Colors.black,
                            elevation: 10.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Text(
                                'START',
                                style: TextStyle(color: Colors.deepOrange),
                              ), // <-- Text
                              SizedBox(
                                width: 8,
                              ),
                              Icon(
                                // <-- Icon
                                Icons.arrow_forward_sharp,
                                size: 24.0,
                                color: Colors.deepOrange,
                              ),
                            ],
                          ),
                        ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ]),
        ),
      ),
    );
  }
}
