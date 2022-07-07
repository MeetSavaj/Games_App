import 'package:games_app/components/webview.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GamesAvatar extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  var image;
  // ignore: prefer_typing_uninitialized_variables
  var name;
  // ignore: prefer_typing_uninitialized_variables
  var link;

  GamesAvatar({Key? key, this.image, this.name, this.link}) : super(key: key);

  @override
  State<GamesAvatar> createState() => _GamesAvatarState();
}

class _GamesAvatarState extends State<GamesAvatar> {
  void _handleURLButtonPress(BuildContext context, String link) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => WebViewContainer(link)));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            // showinterstitialads();
            _handleURLButtonPress(context, widget.link);
          },
          child: CircleAvatar(
            backgroundImage: widget.image,
            radius: 40.0,
          ),
        ),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text("${widget.name}",
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
