import 'dart:io';
import 'package:flutter/material.dart';

class NoInternet extends StatefulWidget {
  const NoInternet({Key? key}) : super(key: key);

  @override
  State<NoInternet> createState() => _NoInternet();
}

class _NoInternet extends State<NoInternet> {
  // ignore: non_constant_identifier_names
  bool ActiveConnection = false;
  String T = "";

  @override
  void initState() {
    CheckUserConnection();
    super.initState();
  }

  // ignore: non_constant_identifier_names
  Future CheckUserConnection() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        setState(() {
          ActiveConnection = true;
          // print("On");
          T = "Turn off the data and repress again";
        });
      }
    } on SocketException catch (_) {
      setState(() {
        ActiveConnection = false;
        T = "Turn On the data and repress again";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
