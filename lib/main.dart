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
         backgroundColor: Color.fromRGBO(49, 60, 72, 1),
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
            ),
            new Container(
              color: Colors.black54,
            ),
            
            new Align(
              alignment: Alignment(0.0,-0.4),
              child: Container(
                margin: const EdgeInsets.all(30.0),
                padding: const EdgeInsets.all(10.0),
                 decoration: new BoxDecoration(
                   borderRadius: BorderRadius.circular(20.0),
                   border: new Border.all(color: Colors.white)
                 ),
                child: Center(
                  child: new Text(
                  "A Donde Vamos...",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 30.0),
                 ),
                ),
                height: 100.0,
                width: 350.0,
              ),
            ),
            
            new Align(
              alignment: Alignment(0.0, -0.8),

                  child: Stack(
                    children: <Widget>[
                      Icon(Icons.check,color: Colors.white,size: 100.0,)
                    ],
                  ),
            ),

            new Align(
              alignment: Alignment(0.0,0.9),
              child: Container(


                decoration: new BoxDecoration(
                    color: Color.fromRGBO(84, 103, 124, 1),
                    borderRadius: BorderRadius.circular(20.0),
                    border: new Border.all(color: Colors.white)
                ),
                child: Center(
                  child: new Text(
                    "Nuestras Actualizaciones empezaran a funcionar desde el 22/03/2019",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                ),
                height: 300.0,
              ),
            ),
          ],
          ),
          
       bottomNavigationBar: new Theme(
         data: Theme.of(context).copyWith(
           canvasColor: const Color.fromRGBO(49, 60, 73, 1)
         ),
         child: new BottomNavigationBar(     
        items: [
           BottomNavigationBarItem(
             
             icon: Icon(Icons.home, color: Colors.white),
             title: new Text("Home",style: TextStyle(color: Colors.white))
           ),
           BottomNavigationBarItem(
            
             icon: Icon(Icons.directions_transit, color: Colors.white),
             title: Text('Transporte Colectivo',style: TextStyle(color: Colors.white))
           ),
           BottomNavigationBarItem(
             icon: Icon(Icons.local_taxi, color: Colors.white),
             title: Text('RadioTaxi',style: TextStyle(color: Colors.white))
           ),
        ],
        fixedColor: Colors.yellowAccent,
        
        ), 
      ),
    );
  }
}
