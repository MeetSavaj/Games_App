import 'package:flutter/material.dart';
import 'package:games_app/screens/action_games.dart';
import 'package:games_app/screens/adventure_games.dart';
import 'package:games_app/screens/earn_money_screen.dart';
import 'package:games_app/screens/eskills_games.dart';
import 'package:games_app/screens/games_screen.dart';
import 'package:games_app/screens/home_screen.dart';
import 'package:games_app/screens/lang_screen.dart';
// import 'package:flutter/services.dart';
import 'package:games_app/screens/launch_screen.dart';
import 'package:games_app/screens/no_internet.dart';
import 'package:games_app/screens/play_to_earn_money.dart';
import 'package:games_app/screens/popular_games_screen.dart';
import 'package:games_app/screens/sports_games.dart';
import 'package:games_app/screens/strategy_games.dart';
import 'package:games_app/screens/thank_you.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        // appBarTheme: const AppBarTheme(
        //   backgroundColor: Colors.orangeAccent,
        //   systemOverlayStyle: SystemUiOverlayStyle.light, // 2
        // ),
        backgroundColor: Colors.deepOrange[400],
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
