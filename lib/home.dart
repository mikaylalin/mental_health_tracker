part of my_library;

//NOTE: events = each day's informatiom

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //create calendar object
  CalendarController _controller;
  // Map of date to emotion data map
  Map<DateTime, Map<String, int>> _events;
  // Selected emotion data for the current day
  Map<String, int> _selectedEvents;
  //creates storage for events (data persistence)
  SharedPreferences prefs;

  @override
  void initState() {
    super.initState();
    //initialize calendar
    _controller = CalendarController();
    _events = {};
    _selectedEvents = {};
    initPrefs();
  }

  //method to retrieve events data (data persistence)
  void initPrefs() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      //decodeMap to get events as a String or an empty Map back
      //set this to the _events in use
      _events = Map<DateTime, Map<String, int>>.from(
          decodeMap(json.decode(prefs.getString("events") ?? "{}")));
    });
  }

  /// Save [emotions] for the current selected day
  void saveEmotions(Map<String, int> emotions) {
    setState(() {
      var date = _controller.selectedDay;
      print("Saving emotions for $date");
      _events[date] = emotions;
      _selectedEvents = _events[date];
      prefs.setString("events", json.encode(encodeMap(_events)));
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
              events: _events.map((key, value) => MapEntry(key, [value])),
              //sets calendar style
              calendarStyle:
                  CalendarStyle(selectedColor: Theme.of(context).primaryColor),
              calendarController: _controller,
              //sets _selectedEvents to the events of a particular day for
              //use outside of this function
              onDaySelected: (date, events) {
                setState(() {
                  // Our map wrapped in a list of length 1 to work with calendar
                  _selectedEvents = events.isEmpty ? {} : events[0];
                });
              },
            ),
            // Edit the below to change how the current day data is display
            ListTile(
                title: Text(_selectedEvents.isEmpty
                    ? "No data"
                    : _selectedEvents.toString())),
          ],
        ),
      ),
      //+ button
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.green,
          hoverColor: Colors.blue,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Test(
                        existingData: _selectedEvents,
                        saveEmotionsCallback: saveEmotions,
                      )),
            );
          }),
    );
  }

  //turn events map into string we can use
  Map<String, dynamic> encodeMap(Map<DateTime, Map<String, int>> map) {
    Map<String, dynamic> newMap = {};
    map.forEach((key, value) {
      newMap[key.toString()] = map[key];
    });
    return newMap;
  }

  Map<DateTime, Map<String, int>> decodeMap(Map<String, dynamic> map) {
    Map<DateTime, Map<String, int>> newMap = {};
    map.forEach((key, value) {
      newMap[DateTime.parse(key)] = Map<String, int>.from(map[key]);
    });
    return newMap;
  }
}
