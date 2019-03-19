import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    final listItems = ["aaaa", "bbbbb", "cccc"]
        .map<ListTile>((s) => ListTile(
              leading: Icon(Icons.arrow_right),
              title: Text(s),
            ))
        .toList();
    return Material(
        child: Center(
          child: ListView(
            children: listItems,
          ),
    ));
  }

}
