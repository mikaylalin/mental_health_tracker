part of my_library;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //create calendar object
  CalendarController _controller;

  @override
  void initState() {
    super.initState();
    //initialize calendar
    _controller = CalendarController();
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
              //sets calendar style
              calendarStyle:
                  CalendarStyle(selectedColor: Theme.of(context).primaryColor),
              calendarController: _controller,
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
          ],
        ),
      ),
    );
  }
}
