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
  Map<DateTime, List<dynamic>> _events;
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
      _events = Map<DateTime, List<dynamic>>.from(
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
              events: _events,
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
              builders: CalendarBuilders(
                //builder for the selected day
                selectedDayBuilder: (context, date, events) => Container(
                  //aligns date in the center of its box
                  alignment: Alignment.center,
                  //deals with the date's box and sets it's appearance back to
                  //when selectedDayBuilder was not created as it overrides
                  //calendarStyle (decoration and child)
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    date.day.toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
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
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Test()),
            );
          }),
    );
  }

  //what happens when the button is pressed
  //how you add events to the screen, edit later
  _showAddDialog() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
                //set the controller to _eventController
                content: TextField(
                  controller: _eventController,
                ),
                actions: <Widget>[
                  FlatButton(
                      child: Text("Save"),
                      onPressed: () {
                        //simply return if no text
                        if (_eventController.text.isEmpty) return;
                        setState(() {
                          //if text is in _eventController, add the text to the
                          //list of events for that _selectedDay in particular
                          if (_events[_controller.selectedDay] != null) {
                            _events[_controller.selectedDay]
                                .add(_eventController.text);
                            //else the text for the specific day is what is
                            //already there
                          } else {
                            _events[_controller.selectedDay] = [
                              _eventController.text
                            ];
                          }
                          //add any newly created events on to prefs so they
                          //will be saved the next time the app runs
                          prefs.setString(
                              "events", json.encode(encodeMap(_events)));
                          _eventController.clear();
                          //exit the Navigator
                          Navigator.pop(context);
                        });
                      })
                ]));
  }

  //turn events map into string we can use
  Map<String, dynamic> encodeMap(Map<DateTime, dynamic> map) {
    Map<String, dynamic> newMap = {};
    map.forEach((key, value) {
      newMap[key.toString()] = map[key];
    });
    return newMap;
  }

  Map<DateTime, dynamic> decodeMap(Map<String, dynamic> map) {
    Map<DateTime, dynamic> newMap = {};
    map.forEach((key, value) {
      newMap[DateTime.parse(key)] = map[key];
    });
    return newMap;
  }
}