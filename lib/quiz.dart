part of my_library;

class Test extends StatefulWidget {
  final Map<String, int> emotionData;

  Test(this.emotionData) {
    print("Received existing quiz data:");
    print(emotionData);
  }

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  static const int numButtons = 5;
  // keyList dictates questions available and what order
  static const List<String> keyList = [
    'anxiety',
    'sadness',
    'numbness',
    'anger',
    'stress',
    'happiness',
    'tiredness',
    'hopelessness'
  ];

  /// Builds the quiz interface
  Widget _buildQuiz() {
    return ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: keyList.length,
        itemBuilder: (context, i) {
          var emotion = keyList[i];
          return Column(children: <Widget>[
            ListTile(
                title:
                    Text('How intense are your feelings of $emotion today?')),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildButtons(emotion)),
          ]);
        });
  }

  /// Builds buttons for [emotion] scale
  List<Widget> _buildButtons(emotion) {
    //list to keep track of the buttons
    List<Widget> buttons = new List(numButtons);
    for (var i = 0; i < numButtons; i++) {
      buttons[i] = (new IconButton(
          icon: new Icon(Icons.brightness_1),
          onPressed: () => setState(() {
                //if the button is pressed, change emotionData to the
                //right intensity
                // widget.emotionData[keyList[index].key] = i + 1;
                print("Want to set $emotion to ${i + 1}");
              }),
          //change the color of the buttons to fit the information in emotionData
          // ?? 0 for data that isn't set yet
          color: (i < (widget.emotionData[emotion] ?? 0))
              ? Colors.orange
              : Colors.grey));
    }
    return buttons;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Daily Check-In'),
        ),
        body: _buildQuiz());
  }
}
