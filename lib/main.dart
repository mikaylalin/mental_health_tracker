import 'package:flutter/material.dart';

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
        // This is the theme of your application.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // Application home page. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  int _selectedIndex = 0;
  //sets the style of the text
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  //creates a list what will be shown for each of the tabs in navigation bar
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Discover',
      style: optionStyle,
    ),
    Text(
      'Index 2: Graphs',
      style: optionStyle,
    ),
    Text(
      'Index 3: Resources',
      style: optionStyle,
    ),
  ];

  //when item tapped move to _selectedIndex, which shows the new text
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called
    
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent. (positions the text)
         child: _widgetOptions.elementAt(_selectedIndex),
      ),
      //create the navigation bar and its parts
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wb_sunny),
            title: Text('Discover'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assessment),
            title: Text('Graphs'),
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Resources'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        //calls _onItemTapped to make sure a change of text happens
        onTap: _onItemTapped,
        //makes it so the tabs don't turn white when not selected
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}


