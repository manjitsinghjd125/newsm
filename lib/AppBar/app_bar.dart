import 'package:flutter/material.dart';


class Appbar extends StatelessWidget {
 final String title;
  final double barHeight = 66.0;


  Appbar(this.title);

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery
      .of(context)
      .padding
      .top;

    return new Container(
      padding: new EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight + barHeight,
     
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
          colors: [
            const Color(0xFF808080),
            const Color(0xFFffffff),
            ],
          
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(0.9, 0.0),
          stops: [0.0,0.9],
          tileMode: TileMode.clamp



        )
      ),


      child: new Center(
        child: new Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 30.0
          ),
        ),
      ),
    );
  }
}
