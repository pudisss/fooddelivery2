import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter/cupertino.dart";
import "home.dart";
import 'pages/search.dart';
import "pages/shop.dart";
import "pages/profile.dart";

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Essential variables for bottomNavigationbar
  List pages = [
    Home(),
    Search(),
    Shop(),
    Profile()
  ];

  int _currentIndex = 0;

  void changepage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: changepage,
        selectedIconTheme: IconThemeData(
          color: Color.fromRGBO(109, 97, 242, 1),

        ),
        selectedItemColor: Color.fromRGBO(109, 97, 242, 1),
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/homeicon.png"),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/searchicon.png'),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/shopicon.png'),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/profileicon.png'),
            label: "",
          )
        ]
      ),
      body: pages[_currentIndex],
    );
  }
}