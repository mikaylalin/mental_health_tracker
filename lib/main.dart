//create library to house files in
library my_library;

import 'package:flutter/material.dart';
import 'dart:math';


//update pubspec.yaml for this to work!
import 'package:table_calendar/table_calendar.dart';
import 'package:introduction_screen/introduction_screen.dart';

//add in files to the library
part 'graphs.dart';
part 'resources.dart';
part 'discover.dart';
part 'home.dart';

void main() {
  runApp(MyApp());
}


class Quote extends StatefulWidget {
  @override
  _QuoteState createState() => _QuoteState();
}

class _QuoteState extends State<Quote> {
  @override
  //random quote picker!
  Random rnd = new Random();
  var lst = [
    "Wisdom is the reward you get for a lifetime of listening when you'd have preferred to talk. \n-Doug Larson",
    "One of the most sincere forms of respect is actually listening to what another has to say. \n-Bryant H. McGill",
    "If you make listening and observation your occupation, you will gain much more than you can by talk. \n-Robert Baden-Powell",
    "Listening is a magnetic and strange thing, a creative force. The friends who listen to us are the ones we move toward. When we are listened to, it creates us, makes us unfold and expand. \n-Karl A. Menniger",
    "Most of the successful people I've known are the ones who do more listening than talking. \n-Bernard Baruch",
    "Listening is being able to be changed by the other person. \n-Alan Alda",
    "Everything in writing begins with language. Language begins with listening. \n-Jeanette Winterson",
    "There is as much wisdom in listening as there is in speaking-and that goes for all relationships, not just romantic ones. \n-Daniel Dae Kim",
    "The most important thing in communication is hearing what isn't said \n-Peter Drucker",
    "When people talk, listen completely. Most people never listen. \n-Ernest Hemingway",
    "Most people do not listen with the intent to understand; they listen with the intent to reply. \n-Stephen R. Covey",
    "Friends are those rare people who ask how we are, and then wait to hear the answer. \n-Ed Cunningham",
    "The art of conversation lies in listening. \n-Malcom Forbes",
    "You cannot truly listen to anyone and do anything else at the same time. \n-M. Scott Peck",
    "We have two ears and one tongue so that we would listen more and talk less. \n-Diogenes",
    "Stories are a communal currency of humanity. \n-Tahir Shah, in Arabian Nights",
    "Great stories happen to those who can tell them. \n-Ira Glass",
    "The engineers of the future will be poets. \n-Terence McKenna",
    "The human species thinks in metaphors and learns through stories. \n-Mary Catherine Bateson",
    "Sometimes reality is too complex. Stories give it form. \n-Jean Luc Godard",
    "Story is a yearning meeting an obstacle. \n-Robert Olen Butler",
    "If you're going to have a story, have a big story, or none at all. \n-Joseph Campbell",
    "Storytelling reveals meaning without committing the error of defining it. \n-Hannah Arendt",
    "The stories we tell literally make the world. If you want to change the world, you need to change your story. This truth applies both to individuals and institutions. \n-Michael Margolis",
    "Those who tell the stories rule the world. \n-Hopi American Indian Proverb",
    "There is no greater agony than bearing an untold story inside you. \n-Maya Angelou",
    "There's always room for a story that can transport people to another place. \n-J.K. Rowling",
    "Enlightenment is the key to everything, and it is the key to intimacy, because it is the goal of true authenticity. \n-Marianne Willliamson",
    "We need to find the courage to say no to the things and people that are not serving us if we want to rediscover ourselves and live our lives with authenticity. \n-Barbara de Angelis",
    "I know of nothing more valuable, when it comes to the all-important virtue of authenticity, than simply being who you are. \n-Charles R. Swindoll",
    ];
  Widget build(BuildContext context) {
    //selects an element from the list of quotes
    var element = lst[rnd.nextInt(lst.length)];
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Column(
            //aligns button to center
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Container(
              //do we want a margin around the button??
              //margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child:
              ButtonTheme(
                //button color
                buttonColor: Colors.deepPurple,
                //size of button
                height: 759.0, minWidth: 700,
                child: RaisedButton(
                  //when button is pressed, it calls on the MyBottomNavigatorBar() method
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => MyBottomNavigationBar()));
                  },
                  //text inside the method
                  child: new Text(
                    element + "\n\n\n\n\n\n Tap to Continue >>>",
                    //sylistic properties of the text
                    style: TextStyle(fontSize: 16.0, color: Colors.white, ),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
                
            )
            ]
          )
            
        ),
      )
    );
  }
}



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp (

      title: 'Mental Health Tracker',
      theme: ThemeData(
        //application theme
        primarySwatch: Colors.indigo,
        //makes the visual density adapt to the platform the app runs on
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),


      home: Quote(), //MyBottomNavigationBar(),
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
