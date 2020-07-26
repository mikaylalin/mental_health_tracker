library my_library;

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'dart:math';

//imported calendar from https://pub.dev/packages/table_calendar#-readme-tab-
//thanks to aleksanderwozniak96@gmail.com
import 'package:table_calendar/table_calendar.dart';
//import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:url_launcher/url_launcher.dart';

//import 'package:carousl/carousel.dart';

//package for persisting data, made by flutter.dev itself, but could
//use something different like Firebase
import 'package:shared_preferences/shared_preferences.dart';
import 'package:charts_flutter/flutter.dart' as charts;

//add in files to the library
part 'graphs.dart';
part 'resources.dart';
part 'discover.dart';
part 'home.dart';
part 'quiz.dart';
part 'quote.dart';

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
        //application theme
        primarySwatch: Colors.indigo,
        //makes the visual density adapt to the platform the app runs on
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      home: MyBottomNavigationBar(), //MyBottomNavigationBar(),
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
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  // Map of date to emotion data map
  Map<DateTime, Map<String, int>> data;
  // SharePreferences to store data...
  SharedPreferences prefs;
  //_selectedIndex is the variable for the index of the navigation bar tabs
  int _selectedIndex = 0;
  // _showQuote is if the quote should show (only on launch)
  bool _showQuote = true;

  @override
  void initState() {
    super.initState();
    data = {};
    initPrefs();
  }

  //method to retrieve events data (data persistence)
  void initPrefs() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      //decodeMap to get events as a String or an empty Map back
      //set this to the _events in use
      data = Map<DateTime, Map<String, int>>.from(
          decodeMap(json.decode(prefs.getString("events") ?? "{}")));
    });
  }

  //when item tapped move to the _selectedIndex, which changes which file
  //is selected
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  /// The main body corresponding to selected [index], make new with updated data every time refresh
  Widget _bodyFor(int index) {
    switch (index) {
      case 0:
        //passes in the data and retrives it
        return Home(data: data, updateDataCallback: updateData);
      case 1:
        return Graphs();
      case 2:
        return Discover();
      case 3:
        return Resources();
      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_showQuote) {
      setState(() {
        _showQuote = false;
      });
      SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Quote()));
      });
    }
    return new Scaffold(
      body: _bodyFor(_selectedIndex),
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

  /// Update and save [newData] for [date]
  void updateData(DateTime date, Map<String, int> newData) {
    data[date] = newData;
    prefs.setString("events", json.encode(encodeMap(data)));
  }

  /// Encode map for saving
  Map<String, dynamic> encodeMap(Map<DateTime, Map<String, int>> map) {
    Map<String, dynamic> newMap = {};
    map.forEach((key, value) {
      newMap[key.toString()] = map[key];
    });
    return newMap;
  }

  /// Decode map to Map<DateTime, Map<String, int> for use w/ calendar
  Map<DateTime, Map<String, int>> decodeMap(Map<String, dynamic> map) {
    Map<DateTime, Map<String, int>> newMap = {};
    map.forEach((key, value) {
      newMap[DateTime.parse(key)] = Map<String, int>.from(map[key]);
    });
    return newMap;
  }
}
