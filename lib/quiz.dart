part of my_library;

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  int numButtons = 5;
  var emotionData;
  var keyList;

  void initState() {
    //map that stores data about each emotion's intensity
    emotionData = {
      'anxiety': 0,
      'sadness': 0,
      'numbness': 0,
      'anger': 0,
      'stress': 0,
      'happiness': 0,
      'tiredness': 0,
      'hopelessness': 0,
    };
    //list that stores the keys (the emotions the quiz asks about)
    keyList = emotionData.entries.toList();
  }

  //builds the quiz interface
  Widget _buildQuiz() {
    return ListView.builder(
        padding: EdgeInsets.all(16.0),
        //create enough sections for the questions and buttons
        itemCount: emotionData.length * 2,
        itemBuilder: (context, i) {
          //alternate sections between questions and buttons
          if (i.isEven) {
            //question sections, i ~/ 2 since itemCount is passed into i
            return ListTile(
                title: Text(
                    'How intense are your feelings of ${keyList[i ~/ 2].key} today?'));
          } else {
            //button sections
            return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildButtons(i ~/ 2));
          }
        });
  }

  //builds the buttons
  List<Widget> _buildButtons(index) {
    //list to keep track of the buttons
    List<Widget> buttons = new List(numButtons);
    for (var i = 0; i < numButtons; i++) {
      buttons[i] = (new IconButton(
          icon: new Icon(Icons.brightness_1),
          onPressed: () => setState(() {
                //if the button is pressed, change emotionData to the
                //right intensity
                emotionData[keyList[index].key] = i + 1;
              }),
          //change the color of the buttons to fit the information in emotionData
          color: (i < emotionData[keyList[index].key])
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
