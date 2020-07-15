part of my_library;

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  /*var _myColorOne = Colors.grey;
  var _myColorTwo = Colors.grey;
  var _myColorThree = Colors.grey;
  var _myColorFour = Colors.grey;
  var _myColorFive = Colors.grey;*/

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Test'),
        ),
        body: Column(children: <Widget>[
          Row(
            //row 1
            children: [
              Container(
                color: Colors.orange,
                margin: EdgeInsets.all(15.0),
                child: Text("Question 1:."),
                // child: FlutterLogo(
                //   size: 50.0,

                // ),
              ),
              Container(
                color: Colors.blue,
                margin: EdgeInsets.all(15.0),
                child: FlutterLogo(
                  size: 50.0,
                ),
              ),
              Container(
                color: Colors.purple,
                margin: EdgeInsets.all(15.0),
                child: FlutterLogo(
                  size: 50.0,
                ),
              ),
              Container(
                color: Colors.green,
                margin: EdgeInsets.all(15.0),
                child: FlutterLogo(
                  size: 50.0,
                ),
              ),
              Container(
                color: Colors.red,
                margin: EdgeInsets.all(15.0),
                child: FlutterLogo(
                  size: 50.0,
                ),
              ),
            ],
            /*
          child: new Container(
            width: 500.0,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new IconButton(icon: new Icon(Icons.adjust),
                  onPressed: ()=>setState((){
                    _myColorOne=Colors.orange;
                    _myColorTwo=Colors.grey;
                    _myColorThree=Colors.grey;
                    _myColorFour=Colors.grey;
                    _myColorFive=Colors.grey;
                }),color: _myColorOne,),
                new IconButton(icon: new Icon(Icons.album),
                  onPressed: ()=>setState((){
                    _myColorOne=Colors.orange;
                    _myColorTwo=Colors.orange;
                    _myColorThree=Colors.grey;
                    _myColorFour=Colors.grey;
                    _myColorFive=Colors.grey;
                }),color: _myColorTwo,),
                new IconButton(icon: new Icon(Icons.adjust), 
                  onPressed: ()=>setState((){
                  _myColorOne=Colors.orange;
                  _myColorTwo=Colors.orange;
                  _myColorThree=Colors.orange;
                  _myColorFour=Colors.grey;
                  _myColorFive=Colors.grey;
                }),color: _myColorThree,),
                new IconButton(icon: new Icon(Icons.album), 
                  onPressed: ()=>setState((){
                  _myColorOne=Colors.orange;
                  _myColorTwo=Colors.orange;
                  _myColorThree=Colors.orange;
                  _myColorFour=Colors.orange;
                  _myColorFive=Colors.grey;
                }),color: _myColorFour,),
                new IconButton(icon: new Icon(Icons.adjust), 
                  onPressed: ()=>setState((){
                  _myColorOne=Colors.orange;
                  _myColorTwo=Colors.orange;
                  _myColorThree=Colors.orange;
                  _myColorFour=Colors.orange;
                  _myColorFive=Colors.orange;
                }),color: _myColorFive,),
              ],
            )
            
          ),*/
          ),
          Row(
            children: [
              Container(
                color: Colors.orange,
                margin: EdgeInsets.all(20.0),
                child: FlutterLogo(
                  size: 60.0,
                ),
              ),
            ],
          ),
        ]));
  }
}
