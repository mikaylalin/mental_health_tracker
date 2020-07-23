part of my_library;

//NOTE: events = each day's informatiom

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //create calendar object
  CalendarController _controller;
  //create list of events (map type)
  Map<DateTime, Map<String, int>> _events;
  //creates controller for add button
  TextEditingController _eventController;
  //creates list for the events of a specific day
  List<dynamic> _selectedEvents;
  //creates storage for events (data persistence)
  SharedPreferences prefs;

  @override
  void initState() {
    super.initState();
    //initialize calendar
    _controller = CalendarController();
    _eventController = TextEditingController();
    _events = {};
    _selectedEvents = [];
    initPrefs();
  }

  //method to retrieve events data (data persistence)
  initPrefs() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      //decodeMap to get events as a String or an empty Map back
      //set this to the _events in use
      _events = Map<DateTime, Map<String, int>>.from(
          decodeMap(json.decode(prefs.getString("events") ?? "{}")));
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Home')),
      //scrollable
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //put the calendar on the screen
            TableCalendar(
              // Currently very ugly
              events: _events
                  .map((key, value) => MapEntry(key, [value.toString()])),
              //sets calendar style
              calendarStyle:
                  CalendarStyle(selectedColor: Theme.of(context).primaryColor),
              calendarController: _controller,
              //sets _selectedEvents to the events of a particular day for
              //use outside of this function
              onDaySelected: (date, events) {
                setState(() {
                  _selectedEvents = events;
                });
              },
            ),
            //lists out the _selectedEvents (events of the day) on the screen
            //below the calendar
            ..._selectedEvents.map((event) => ListTile(title: Text(event)))
          ],
        ),
      ),
      //+ button
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.green,
          hoverColor: Colors.blue,
          onPressed: () {
            print(_controller.selectedDay);
            setState(() {
              _events[_controller.selectedDay] = {"anxiety": 5, "sadness": 3};
              prefs.setString("events", json.encode(encodeMap(_events)));
            });
            // Navigator.push(
            // context,
            // MaterialPageRoute(builder: (context) => Test()),
            // );
          }),
    );
  }

  //turn events map into string we can use
  Map<String, dynamic> encodeMap(Map<DateTime, Map<String, int>> map) {
    Map<String, dynamic> newMap = {};
    print("Encode Map");
    map.forEach((key, value) {
      print("Key $key");
      print("Value $value");
      newMap[key.toString()] = map[key];
    });
    return newMap;
  }

  Map<DateTime, Map<String, int>> decodeMap(Map<String, dynamic> map) {
    Map<DateTime, Map<String, int>> newMap = {};
    print("Decode Map");
    map.forEach((key, value) {
      print("Key $key");
      print("Value $value");
      newMap[DateTime.parse(key)] = Map<String, int>.from(map[key]);
    });
    return newMap;
  }
}
