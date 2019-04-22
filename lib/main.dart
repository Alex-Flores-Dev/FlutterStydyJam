import 'package:flutter/material.dart';
import 'package:flutterstudy/colectivo.dart';
import 'package:flutterstudy/taxi.dart';
import 'package:flutterstudy/home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Bottom Navigation',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: const Color.fromRGBO(49, 60, 72, 1),
        primaryColorDark: const Color(0xFF167F67),
        accentColor: const Color.fromRGBO(49, 60, 72, 1),
      ),
      home: new DashboardScreen(title: 'OnTimeApp'),
    );
  }
}
 class DashboardScreen extends StatefulWidget {
  DashboardScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DashboardScreenState createState() => new _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  PageController _pageController;
  int _page = 0;

  @override
  void initState() {
    super.initState();
    _pageController = new PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }
 void navigationTapped(int page) {
    // Animating to the page.
    // You can use whatever duration and curve you like
    _pageController.animateToPage(page,
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }
 @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          widget.title,
          style: new TextStyle(color: const Color(0xFFFFFFFF)),
        ),
      ),
      body: new PageView(
        children: [
          new Home("Homeeeeeeeee"),
          new Taxi("Location screen"),
          new Colectivo(),
        ],
        onPageChanged: onPageChanged,
        controller: _pageController,
      ),
      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
              // sets the background color of the `BottomNavigationBar`
              canvasColor: const Color.fromRGBO(49, 60, 72, 1),
            ), // sets the inactive color of the `BottomNavigationBar`
        child: new BottomNavigationBar(
          items: [
            new BottomNavigationBarItem(
                icon: new Icon(
                  Icons.home,
                  color: const Color(0xFFFFFFFF),
                ),
                title: new Text(
                  "Home",
                  style: new TextStyle(
                    color: const Color(0xFFFFFFFF),
                  ),
                )),
            new BottomNavigationBarItem(
                icon: new Icon(
                  Icons.location_on,
                  color: const Color(0xFFFFFFFF),
                ),
                title: new Text(
                  "Location",
                  style: new TextStyle(
                    color: const Color(0xFFFFFFFF),
                  ),
                )),
            new BottomNavigationBarItem(
                icon: new Icon(
                  Icons.people,
                  color: const Color(0xFFFFFFFF),
                ),
                title: new Text(
                  "Friends",
                  style: new TextStyle(
                    color: const Color(0xFFFFFFFF),
                  ),
                ))
          ],
          onTap: navigationTapped,
          currentIndex: _page,
        ),
      ),
    );
  }
}