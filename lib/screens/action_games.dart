import 'package:flutter/material.dart';

class ActionGameScreen extends StatelessWidget {
  ActionGameScreen({Key? key}) : super(key: key);
  final List<Map> myProducts =
      List.generate(6, (index) => {"id": index, "name": "Product $index"})
          .toList();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_sharp,
                color: Colors.white,
              ),
            ),
            titleTextStyle: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
            backgroundColor: Colors.deepOrange[400],
            title: const Text("Action Games"),
          ),
          backgroundColor: Colors.white,
          body: Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 150,
                      childAspectRatio: 3,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 20),
                  itemCount: myProducts.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return const CircleAvatar(
                      backgroundImage:
                          NetworkImage("https://picsum.photos/250?image=1"),
                    );
                  }),
            ),
            // child: Padding(
            //   padding: const EdgeInsets.all(20.0),
            //   child: GridView(
            //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //       crossAxisCount: 3,
            //       crossAxisSpacing: 6,
            //     ),
            //     children: const [
            //       CircleAvatar(
            //           minRadius: 150,
            //           // maxRadius: 100.0,
            //           backgroundImage:
            //               NetworkImage('https://picsum.photos/250?image=1')),
            //       CircleAvatar(
            //           radius: 10.0,
            //           backgroundImage:
            //               NetworkImage('https://picsum.photos/250?image=1')),
            //       CircleAvatar(
            //           radius: 10.0,
            //           backgroundImage:
            //               NetworkImage('https://picsum.photos/250?image=1')),
            //     ],
            //   ),
            // ),
          )),
    );
  }
}
