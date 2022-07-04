import 'package:flutter/material.dart';
import 'package:games_app/screens/home_screen.dart';

// ignore: constant_identifier_names
enum SingingCharacter { Hindi, English }

class LangScreen extends StatefulWidget {
  const LangScreen({Key? key}) : super(key: key);

  @override
  State<LangScreen> createState() => _LangScreenState();
}

class _LangScreenState extends State<LangScreen> {
  SingingCharacter? _character;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Align(
            alignment: Alignment.center,
            child: Form(
              key: _formKey,
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
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ListTile(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 40.0),
                    title: const Text(
                      'Hindi',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0),
                    ),
                    trailing: Radio<SingingCharacter>(
                      value: SingingCharacter.Hindi,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 40.0),
                    title: const Text(
                      'English',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0),
                    ),
                    trailing: Radio<SingingCharacter>(
                      value: SingingCharacter.English,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 280.0,
                  ),
                  ElevatedButton(
                      onPressed: (() {
                        if (_character == SingingCharacter.English ||
                            _character == SingingCharacter.Hindi) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()),
                          );
                        } else {
                          showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                              title: const Text("Language Selection"),
                              content:
                                  const Text("Please select the language!"),
                              actions: <Widget>[
                                Align(
                                  alignment: Alignment.center,
                                  child: ElevatedButton(
                                    onPressed: () => Navigator.pop(context),

                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.deepOrange[400],
                                      fixedSize: const Size(80, 30),
                                      textStyle: const TextStyle(
                                          fontSize: 15,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.bold),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    //return true when click on "Yes"
                                    child: const Text(
                                      'Okay',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }
                      }),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrange[400],
                        fixedSize: const Size(150, 40),
                        textStyle: const TextStyle(
                            fontSize: 18,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold),
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      child: const Text(
                        "Continue",
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ),
            )),
      ),
    );
  }
}
