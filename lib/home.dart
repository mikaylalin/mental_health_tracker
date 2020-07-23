part of my_library;

//NOTE: events = each day's informatiom

class Home extends StatefulWidget {
  final Map<DateTime, Map<String, int>> data;
  final Function(DateTime, Map<String, int>) updateDataCallback;

  Home({this.data, this.updateDataCallback});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //create calendar object
  CalendarController _controller;
  // Selected emotion data for the current day
  Map<String, int> _selectedData;

  @override
  void initState() {
    super.initState();
    //initialize calendar
    _controller = CalendarController();
  }

  /// Save [emotions] for the current selected day
  void saveEmotions(Map<String, int> emotions) {
    setState(() {
      var date = _controller.selectedDay;
      print("Saving emotions for $date");
      widget.updateDataCallback(date, emotions);
      _selectedData = emotions;
    });
  }

  @override
  Widget build(BuildContext context) {
    _selectedData = widget.data[_controller.selectedDay] ?? {};
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
              events: widget.data.map((key, value) => MapEntry(key, [value])),
              //sets calendar style
              calendarStyle:
                  CalendarStyle(selectedColor: Theme.of(context).primaryColor),
              calendarController: _controller,
              //sets _selectedEvents to the events of a particular day for
              //use outside of this function
              onDaySelected: (date, events) {
                setState(() {
                  // Our map wrapped in a list of length 1 to work with calendar
                  _selectedData = events.isEmpty ? {} : events[0];
                });
              },
            ),
            // Edit the below to change how the current day data is display
            ListTile(
                title: Text(_selectedData.isEmpty
                    ? "No data"
                    : _selectedData.toString())),
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
                        existingData: _selectedData,
                        saveEmotionsCallback: saveEmotions,
                      )),
            );
          }),
    );
  }
}
