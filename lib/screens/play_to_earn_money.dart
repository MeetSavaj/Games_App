import 'package:flutter/material.dart';

class PTEMScreen extends StatelessWidget {
  const PTEMScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_sharp,
              color: Colors.white,
            ),
          ),
          titleTextStyle: const TextStyle(
              color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
          backgroundColor: Colors.deepOrange[400],
          title: const Text("Play To Earn Money"),
        ),
        backgroundColor: Colors.white,
        body: Align(
          alignment: Alignment.center,
          child: Column(children: [
            const SizedBox(
              height: 200.0,
            ),
            ElevatedButton(
              onPressed: (() {}),
              style: ElevatedButton.styleFrom(
                primary: const Color(0xff3C3279),
                fixedSize: const Size(300, 55),
                textStyle: const TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: Row(children: const [
                CircleAvatar(
                    radius: 20.0,
                    backgroundColor: Color(0xff3C3279),
                    backgroundImage:
                        AssetImage('assets/eskillsgames/50k2.png')),
                SizedBox(
                  width: 30.0,
                ),
                Text(
                  "Win Coin",
                  style: TextStyle(color: Colors.white),
                ),
              ]),
            ),
            const SizedBox(
              height: 15.0,
            ),
            ElevatedButton(
              onPressed: (() {}),
              style: ElevatedButton.styleFrom(
                primary: const Color(0xff9B5E31),
                fixedSize: const Size(300, 55),
                textStyle: const TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: Row(children: const [
                CircleAvatar(
                  radius: 20.0,
                  backgroundColor: Color(0xff9B5E31),
                  backgroundImage:
                      AssetImage('assets/eskillsgames/wincoins.png'),
                ),
                SizedBox(
                  width: 30.0,
                ),
                Text(
                  "More Money",
                  style: TextStyle(color: Colors.white),
                ),
              ]),
            ),
            const SizedBox(
              height: 15.0,
            ),
            ElevatedButton(
              onPressed: (() {}),
              style: ElevatedButton.styleFrom(
                primary: const Color(0xffE95A5E),
                fixedSize: const Size(300, 55),
                textStyle: const TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: Row(children: const [
                CircleAvatar(
                  radius: 20.0,
                  backgroundColor: Color(0xffE95A5E),
                  backgroundImage: AssetImage('assets/eskillsgames/50k.png'),
                ),
                SizedBox(
                  width: 30.0,
                ),
                Text(
                  "Earn Cash",
                  style: TextStyle(color: Colors.white),
                ),
              ]),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              GestureDetector(
                onTap: (() {}),
                child: const CircleAvatar(
                  radius: 40.0,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/PTEM/cricketquiz.png'),
                ),
              ),
              const SizedBox(
                width: 30.0,
              ),
              GestureDetector(
                onTap: () {},
                child: const CircleAvatar(
                  radius: 40.0,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/PTEM/gkquiz.png'),
                ),
              ),
              const SizedBox(
                width: 30.0,
              ),
              GestureDetector(
                onTap: (() {}),
                child: const CircleAvatar(
                  radius: 40.0,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/PTEM/techquiz.png'),
                ),
              ),
            ]),
          ]),
        ),
      ),
    );
  }
}
