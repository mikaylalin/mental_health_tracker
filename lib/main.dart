//create library to house files in
library my_library;

import 'package:flutter/material.dart';
import 'dart:math';

//add in files to the library
part 'graphs.dart';
part 'resources.dart';
part 'discover.dart';
part 'home.dart';
part "hometest.dart";
part "quote.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mental Health Tracker',
      theme: ThemeData(
        //application them
        primarySwatch: Colors.blue,
        //makes the visual density adapt to the platform the app runs on
        visualDensity: VisualDensity.adaptivePlatformDensity,

        fontFamily: 'Roboto',
      ),
      home: MyBottomNavigationBar(),
      //makes sure we call what's in MyBottomNavigationBar
    );
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  // Application home page. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _MyBottomNavigationBar createState() => _MyBottomNavigationBar();
}

class _MyBottomNavigationBar extends State<MyBottomNavigationBar> {
  //_selectedIndex is the variable for the index of the navigation bar tabs
  int _selectedIndex = 0;
  //list of files, in the same order as the tabs
  final List<Widget> _children = [
    Home(),
    Graphs(),
    Discover(),
    Resources(),
  ];

  //when item tapped move to the _selectedIndex, which changes which file
  //is selected
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called

    return new Scaffold(
      //body will go to the file and _selectedIndex match in children
      body: _children[_selectedIndex],
      //create the navigation bar and its parts
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.show_chart),
            title: Text('Graphs'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mood),
            title: Text('Discover'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Resources'),
          ),
        ],
        //changes the _selectedIndex
        currentIndex: _selectedIndex,
        //changes the navigation bar tab colors
        selectedItemColor: Colors.amber[800],
        //calls _onItemTapped whenever a tap tapped
        onTap: _onItemTapped,
        //makes it so the tabs don't turn white when not selected
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
