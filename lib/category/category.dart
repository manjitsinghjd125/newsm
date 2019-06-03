import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.wb_sunny),
            title: Text('Sun'),
          ),
          ListTile(
            leading: Icon(Icons.brightness_3),
            title: Text('Moon'),
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Star'),
          ),
        ],
      );
  }
}
