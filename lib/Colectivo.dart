import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
   home: SecondPage(),
  ));
}
class SecondPage extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
  return new Scaffold(
  appBar: AppBar(
        backgroundColor: Color.fromRGBO(49, 60, 72, 1),
        title: new Text("Trasnporte colectivo."),
      ),
 );
 }
}