import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}


class MyApp extends StatelessWidget {
  @override
  int _selected=0;
  final _statefin=[Text('item 1'),Text('item 2'),Text('item 2')];

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: new Text("OnTimeApp"),
      ),
      body: new Stack(
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage("assets/images/people2.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
          ),
      
//
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap:(int index){
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarms),
            title: Text('Alamrs')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.archive),
            title: Text('Arch')
          ),
        ],
      ),
    );
  }
}
