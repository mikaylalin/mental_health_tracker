part of my_library;

//NOTE: events = each day's informatiom

class Home extends StatefulWidget {
  //parameters
  final Map<DateTime, Map<String, int>> data;
  final Function(DateTime, Map<String, int>) updateDataCallback;

  Home({this.data, this.updateDataCallback});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //create calendar object
  CalendarController _controller;
  //user's selected emotion data for the current day
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

  //formatting for how the day's emotions will be written out below the calendar
  String listEmotions() {
    var listedEmotions = '';
    var keys = _selectedData.keys.toList();
    for (var emotion in keys) {
      listedEmotions += '${emotion.capitalize()}: ${_selectedData[emotion]}\n';
    }
    return listedEmotions;
  }

  @override
  Widget build(BuildContext context) {
    _selectedData = widget.data[_controller.selectedDay] ?? {};
    return new Scaffold(
        appBar: new AppBar(title: new Text('Home'), actions: <Widget>[
          //saves the quiz data only if the check mark is pressed
          IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Settings()),
                );
              }),
        ]),
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
                calendarStyle: CalendarStyle(
                  selectedColor: Theme.of(context).primaryColor,
                ),
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
              //how the current day's data is display
              ListTile(
                  title:
                      Text(_selectedData.isEmpty ? "No data" : listEmotions())),
            ],
          ),
        ),
        //+ button (goes to quiz)
        floatingActionButton:
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          FloatingActionButton(
            child: Icon(Icons.add),
            backgroundColor: Colors.indigo[600],
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Test(
                          existingData: _selectedData,
                          saveEmotionsCallback: saveEmotions,
                        )),
              );
            },
            heroTag: null,
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            child: Icon(Icons.speaker_notes),
            backgroundColor: Colors.indigo[600],
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Diary()),
              );
            },
            heroTag: null,
          )
        ]));
  }
}

//capitalizes a word
extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
    );
  }
}

class Diary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Personal Diary'),
        ),
        body: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.all(10.0),
            children: <Widget>[
              Text('Feel free to write about your day below!',
                  style: TextStyle(fontSize: 17.0),
                  textAlign: TextAlign.center),
              TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 10.0),
                    ),
                  )),
            ]));
  }
}
