import 'package:flutter/material.dart';

void main() {
  runApp(
      new MaterialApp(
        home: MyApp(),
      ));
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: new Text("OnTimeApp"),
      ),
    );
  }
}