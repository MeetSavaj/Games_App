import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:games_app/screens/launch_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        // appBarTheme: const AppBarTheme(
        //   backgroundColor: Colors.orangeAccent,
        //   systemOverlayStyle: SystemUiOverlayStyle.light, // 2
        // ),
        backgroundColor: Colors.orangeAccent,
        primarySwatch: Colors.orange,
        // fontFamily: GoogleFonts.lato().fontFamily
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/",
      routes: {
        "/": (context) => const LaunchScreen(),
        // "/home": (context) => HomePage(),
        // "/login": (context) => LoginPage()
      },
    );
  }
}
