import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://956.go.predchamp.com/');

void url() async {
  if (!await launchUrl(_url)) throw 'Could not launch $_url';
}
