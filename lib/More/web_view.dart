import 'package:flutter/material.dart';

import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';


class WebView extends StatefulWidget {
  final String url;

  WebView(this.url);

  @override
  _WebViewExampleState createState() => _WebViewExampleState();
}

class _WebViewExampleState extends State<WebView> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
          title: Text("NEWS",
         textAlign: TextAlign.center,
                        style: const TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 26.0
          ),),
         backgroundColor:  Colors.grey[400],
        ),
      url: widget.url,
      withZoom: true,
);
  }
}