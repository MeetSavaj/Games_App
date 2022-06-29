import 'package:flutter/material.dart';

class GamesAvatar extends StatelessWidget {
  var image;
  var name;

  GamesAvatar({Key? key, this.image, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundImage: image,
          radius: 37.0,
        ),
        Flexible(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Text("$name",
                textAlign: TextAlign.center,
                maxLines: 2,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                )),
          ),
        ),
      ],
    );
  }
}
