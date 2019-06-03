import 'package:flutter/material.dart';
import 'News/news_dashboard.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
void main() async{

  try {
    await FlutterStatusbarcolor.setStatusBarColor(Colors.white);
  }  catch (e) {
    print(e);
  }
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage("hello"),
    );
  }
}

