part of my_library;

class Test extends StatefulWidget {
  //parameters
  final Map<String, int> existingData;
  final void Function(Map<String, int>) saveEmotionsCallback;

  Test({@required this.existingData, this.saveEmotionsCallback}) {
    print("Received existing quiz data:");
    print(existingData);
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

  // Holds the quiz data (save on exit)
  Map<String, int> emotionData;

  @override
  void initState() {
    super.initState();
    //implements existing data for the day, could use other defaults as well
    emotionData = {...widget.existingData};
  }

  /// Builds the quiz interface
  Widget _buildQuiz() {
    return ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: keyList.length,
        itemBuilder: (context, i) {
          //runs through each emotion in keyList for the questions
          var emotion = keyList[i];
          //the question and the buttons are connected
          return Column(children: <Widget>[
            ListTile(
                title:
                    Text('How intense are your feelings of $emotion today?')),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                //call _buildButtons for the specific emotion the user is on
                children: _buildButtons(emotion)),
          ]);
        });
  }

  /// Builds buttons for [emotion] scale
  List<Widget> _buildButtons(emotion) {
    //list to keep track of the buttons
    List<Widget> buttons = new List(numButtons);
    //create all of the buttons and update emotionData if they are pressed
    for (var i = 0; i < numButtons; i++) {
      buttons[i] = (new IconButton(
          icon: new Icon(Icons.brightness_1),
          onPressed: () => setState(() {
                //(i + 1) since starts at 0
                emotionData[emotion] = i + 1;
              }),
          //change the color of the buttons to fit the information in emotionData
          // (?? 0) to account for data that isn't set yet
          color:
              (i < (emotionData[emotion] ?? 0)) ? Colors.orange : Colors.grey));
    }
    return buttons;
  }

  //fills questions in which no rating has been selected for with 0
  _fillEmptyQuestions() {
    for (var emotion in keyList) {
      emotionData[emotion] =
          (emotionData[emotion] == null) ? 0 : emotionData[emotion];
    }
  }

  

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Daily Check-In'),
          actions: <Widget>[
            //saves the quiz data only if the check mark is pressed
            IconButton(
              icon: Icon(Icons.check),
              onPressed: () {
                _fillEmptyQuestions();
                widget.saveEmotionsCallback(emotionData);
                Navigator.pop(context);
              }
            ),
            IconButton(
              icon: Icon(Icons.info_outline, color:Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuizInstructions()),
                );
              },
            ),
          ],
        ),
        body: _buildQuiz());
  }
}
class QuizInstructions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instructions'),
        
      ),
      body: Center(
        child: Text('iNsTrUcTiOnS'),
      ),
    );
  }
}
