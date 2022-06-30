import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewContainer extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final String link;
  // ignore: use_key_in_widget_constructors
  const WebViewContainer(this.link);
  @override
  // ignore: no_logic_in_create_state
  createState() => _WebViewContainerState(this.link);
}

class _WebViewContainerState extends State<WebViewContainer> {
  // ignore: prefer_typing_uninitialized_variables
  final String _link;
  final _key = UniqueKey();
  _WebViewContainerState(this._link);

  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Expanded(
                child: WebView(
                    key: _key,
                    javascriptMode: JavascriptMode.unrestricted,
                    initialUrl: _link))
          ],
        ));
  }
}
