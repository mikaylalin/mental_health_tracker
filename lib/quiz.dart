part of my_library;

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  
  var _myColorOne1 = Colors.grey;
  var _myColorTwo1 = Colors.grey;
  var _myColorThree1 = Colors.grey;
  var _myColorFour1 = Colors.grey;
  var _myColorFive1 = Colors.grey;

  var _myColorOne2 = Colors.grey;
  var _myColorTwo2 = Colors.grey;
  var _myColorThree2 = Colors.grey;
  var _myColorFour2 = Colors.grey;
  var _myColorFive2 = Colors.grey;

  var _myColorOne3 = Colors.grey;
  var _myColorTwo3 = Colors.grey;
  var _myColorThree3 = Colors.grey;
  var _myColorFour3 = Colors.grey;
  var _myColorFive3 = Colors.grey;

  var _myColorOne4 = Colors.grey;
  var _myColorTwo4 = Colors.grey;
  var _myColorThree4 = Colors.grey;
  var _myColorFour4 = Colors.grey;
  var _myColorFive4 = Colors.grey;

  var _myColorOne5 = Colors.grey;
  var _myColorTwo5 = Colors.grey;
  var _myColorThree5 = Colors.grey;
  var _myColorFour5 = Colors.grey;
  var _myColorFive5 = Colors.grey;

  var _myColorOne6 = Colors.grey;
  var _myColorTwo6 = Colors.grey;
  var _myColorThree6 = Colors.grey;
  var _myColorFour6 = Colors.grey;
  var _myColorFive6 = Colors.grey;

  var _myColorOne7 = Colors.grey;
  var _myColorTwo7 = Colors.grey;
  var _myColorThree7 = Colors.grey;
  var _myColorFour7 = Colors.grey;
  var _myColorFive7 = Colors.grey;

  var _myColorOne8 = Colors.grey;
  var _myColorTwo8 = Colors.grey;
  var _myColorThree8 = Colors.grey;
  var _myColorFour8 = Colors.grey;
  var _myColorFive8 = Colors.grey;

  var _myColorOne9 = Colors.grey;
  var _myColorTwo9 = Colors.grey;
  var _myColorThree9 = Colors.grey;
  var _myColorFour9 = Colors.grey;
  var _myColorFive9 = Colors.grey;

  var _myColorOne0 = Colors.grey;
  var _myColorTwo0 = Colors.grey;
  var _myColorThree0 = Colors.grey;
  var _myColorFour0 = Colors.grey;
  var _myColorFive0 = Colors.grey;
  
  @override
  Widget build(BuildContext context) {
    //this sets the width of the container to be the full width of the screen
    double cWidth = MediaQuery.of(context).size.width;
      return new Scaffold(
          appBar: new AppBar(
            title: new Text('Test'),
          ),
          //this type of body allows for scrolling to happen on the page
          body: SingleChildScrollView(
            child: Column(children: <Widget>[
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    width: cWidth,
                    color: Colors.yellow,
                    child: Text('Question 1: ', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
            ],
          ),
          Row( 
            children: [
              Container(
                    color: Colors.white,
                    width: cWidth,
                    child: Text(' ', textAlign: TextAlign.center),
                  ),
            ],
          ),



          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(icon: new Icon(Icons.brightness_1),
                  onPressed: ()=>setState((){
                    _myColorOne1=Colors.orange;
                    _myColorTwo1=Colors.grey;
                    _myColorThree1=Colors.grey;
                    _myColorFour1=Colors.grey;
                    _myColorFive1=Colors.grey;
                }),color: _myColorOne1,),
                new IconButton(icon: new Icon(Icons.brightness_1),
                  onPressed: ()=>setState((){
                    _myColorOne1=Colors.orange;
                    _myColorTwo1=Colors.orange;
                    _myColorThree1=Colors.grey;
                    _myColorFour1=Colors.grey;
                    _myColorFive1=Colors.grey;
                }),color: _myColorTwo1,),
                new IconButton(icon: new Icon(Icons.brightness_1), 
                  onPressed: ()=>setState((){
                  _myColorOne1=Colors.orange;
                  _myColorTwo1=Colors.orange;
                  _myColorThree1=Colors.orange;
                  _myColorFour1=Colors.grey;
                  _myColorFive1=Colors.grey;
                }),color: _myColorThree1,),
                new IconButton(icon: new Icon(Icons.brightness_1), 
                  onPressed: ()=>setState((){
                  _myColorOne1=Colors.orange;
                  _myColorTwo1=Colors.orange;
                  _myColorThree1=Colors.orange;
                  _myColorFour1=Colors.orange;
                  _myColorFive1=Colors.grey;
                }),color: _myColorFour1,),
                new IconButton(icon: new Icon(Icons.brightness_1), 
                  onPressed: ()=>setState((){
                  _myColorOne1=Colors.orange;
                  _myColorTwo1=Colors.orange;
                  _myColorThree1=Colors.orange;
                  _myColorFour1=Colors.orange;
                  _myColorFive1=Colors.orange;
                }),color: _myColorFive1,),

            ],
          ),
          Row(
            children: [
              Container(
                    color: Colors.white,
                    width: cWidth,
                    child: Text(' ', textAlign: TextAlign.center),
                  ),
            ],
          ),
          Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    width: cWidth,
                    color: Colors.yellow,
                    child: Text('Question 2: ', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
            ],
          ),
          Row( 
            children: [
              Container(
                    color: Colors.white,
                    width: cWidth,
                    child: Text(' ', textAlign: TextAlign.center),
                  ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(icon: new Icon(Icons.brightness_1),
                  onPressed: ()=>setState((){
                    _myColorOne2=Colors.orange;
                    _myColorTwo2=Colors.grey;
                    _myColorThree2=Colors.grey;
                    _myColorFour2=Colors.grey;
                    _myColorFive2=Colors.grey;
                }),color: _myColorOne2,),
                new IconButton(icon: new Icon(Icons.brightness_1),
                  onPressed: ()=>setState((){
                    _myColorOne2=Colors.orange;
                    _myColorTwo2=Colors.orange;
                    _myColorThree2=Colors.grey;
                    _myColorFour2=Colors.grey;
                    _myColorFive2=Colors.grey;
                }),color: _myColorTwo2,),
                new IconButton(icon: new Icon(Icons.brightness_1), 
                  onPressed: ()=>setState((){
                  _myColorOne2=Colors.orange;
                  _myColorTwo2=Colors.orange;
                  _myColorThree2=Colors.orange;
                  _myColorFour2=Colors.grey;
                  _myColorFive2=Colors.grey;
                }),color: _myColorThree2,),
                new IconButton(icon: new Icon(Icons.brightness_1), 
                  onPressed: ()=>setState((){
                  _myColorOne2=Colors.orange;
                  _myColorTwo2=Colors.orange;
                  _myColorThree2=Colors.orange;
                  _myColorFour2=Colors.orange;
                  _myColorFive2=Colors.grey;
                }),color: _myColorFour2,),
                new IconButton(icon: new Icon(Icons.brightness_1), 
                  onPressed: ()=>setState((){
                  _myColorOne2=Colors.orange;
                  _myColorTwo2=Colors.orange;
                  _myColorThree2=Colors.orange;
                  _myColorFour2=Colors.orange;
                  _myColorFive2=Colors.orange;
                }),color: _myColorFive2,),

            ],
          ),
          Row( 
            children: [
              Container(
                    color: Colors.white,
                    width: cWidth,
                    child: Text(' ', textAlign: TextAlign.center),
                  ),
            ],
          ),
          Row( //row 5
            children: [
              Container(
                    padding: const EdgeInsets.all(16.0),
                    width: cWidth,
                    color: Colors.yellow,
                    child: Text('Question 3: ', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
            ],
          ),
          Row( //row 2
            children: [
              Container(
                    color: Colors.white,
                    width: cWidth,
                    child: Text(' ', textAlign: TextAlign.center),
                  ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(icon: new Icon(Icons.brightness_1),
                  onPressed: ()=>setState((){
                    _myColorOne3=Colors.orange;
                    _myColorTwo3=Colors.grey;
                    _myColorThree3=Colors.grey;
                    _myColorFour3=Colors.grey;
                    _myColorFive3=Colors.grey;
                }),color: _myColorOne3,),
                new IconButton(icon: new Icon(Icons.brightness_1),
                  onPressed: ()=>setState((){
                    _myColorOne3=Colors.orange;
                    _myColorTwo3=Colors.orange;
                    _myColorThree3=Colors.grey;
                    _myColorFour3=Colors.grey;
                    _myColorFive3=Colors.grey;
                }),color: _myColorTwo3,),
                new IconButton(icon: new Icon(Icons.brightness_1), 
                  onPressed: ()=>setState((){
                  _myColorOne3=Colors.orange;
                  _myColorTwo3=Colors.orange;
                  _myColorThree3=Colors.orange;
                  _myColorFour3=Colors.grey;
                  _myColorFive3=Colors.grey;
                }),color: _myColorThree3,),
                new IconButton(icon: new Icon(Icons.brightness_1), 
                  onPressed: ()=>setState((){
                  _myColorOne3=Colors.orange;
                  _myColorTwo3=Colors.orange;
                  _myColorThree3=Colors.orange;
                  _myColorFour3=Colors.orange;
                  _myColorFive3=Colors.grey;
                }),color: _myColorFour3,),
                new IconButton(icon: new Icon(Icons.brightness_1), 
                  onPressed: ()=>setState((){
                  _myColorOne3=Colors.orange;
                  _myColorTwo3=Colors.orange;
                  _myColorThree3=Colors.orange;
                  _myColorFour3=Colors.orange;
                  _myColorFive3=Colors.orange;
                }),color: _myColorFive3,),

            ],
          ),
          Row( //row 2
            children: [
              Container(
                    color: Colors.white,
                    width: cWidth,
                    child: Text(' ', textAlign: TextAlign.center),
                  ),
            ],
          ),
          Row( //row 7
            children: [
              Container(
                    padding: const EdgeInsets.all(16.0),
                    width: cWidth,
                    color: Colors.yellow,
                    child: Text('Question 4: ', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
            ],
          ),
          Row( //row 2
            children: [
              Container(
                    color: Colors.white,
                    width: cWidth,
                    child: Text(' ', textAlign: TextAlign.center),
                  ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(icon: new Icon(Icons.brightness_1),
                  onPressed: ()=>setState((){
                    _myColorOne4=Colors.orange;
                    _myColorTwo4=Colors.grey;
                    _myColorThree4=Colors.grey;
                    _myColorFour4=Colors.grey;
                    _myColorFive4=Colors.grey;
                }),color: _myColorOne4,),
                new IconButton(icon: new Icon(Icons.brightness_1),
                  onPressed: ()=>setState((){
                    _myColorOne4=Colors.orange;
                    _myColorTwo4=Colors.orange;
                    _myColorThree4=Colors.grey;
                    _myColorFour4=Colors.grey;
                    _myColorFive4=Colors.grey;
                }),color: _myColorTwo4,),
                new IconButton(icon: new Icon(Icons.brightness_1), 
                  onPressed: ()=>setState((){
                  _myColorOne4=Colors.orange;
                  _myColorTwo4=Colors.orange;
                  _myColorThree4=Colors.orange;
                  _myColorFour4=Colors.grey;
                  _myColorFive4=Colors.grey;
                }),color: _myColorThree4,),
                new IconButton(icon: new Icon(Icons.brightness_1), 
                  onPressed: ()=>setState((){
                  _myColorOne4=Colors.orange;
                  _myColorTwo4=Colors.orange;
                  _myColorThree4=Colors.orange;
                  _myColorFour4=Colors.orange;
                  _myColorFive4=Colors.grey;
                }),color: _myColorFour4,),
                new IconButton(icon: new Icon(Icons.brightness_1), 
                  onPressed: ()=>setState((){
                  _myColorOne4=Colors.orange;
                  _myColorTwo4=Colors.orange;
                  _myColorThree4=Colors.orange;
                  _myColorFour4=Colors.orange;
                  _myColorFive4=Colors.orange;
                }),color: _myColorFive4,),

            ],
          ),
          Row( //row 2
            children: [
              Container(
                    color: Colors.white,
                    width: cWidth,
                    child: Text(' ', textAlign: TextAlign.center),
                  ),
            ],
          ),
          Row( //row 9
            children: [
              Container(
                    padding: const EdgeInsets.all(16.0),
                    width: cWidth,
                    color: Colors.yellow,
                    child: Text('Question 5: ', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
            ],
          ),
        Row( //row 2
            children: [
              Container(
                    color: Colors.white,
                    width: cWidth,
                    child: Text(' ', textAlign: TextAlign.center),
                  ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(icon: new Icon(Icons.brightness_1),
                  onPressed: ()=>setState((){
                    _myColorOne5=Colors.orange;
                    _myColorTwo5=Colors.grey;
                    _myColorThree5=Colors.grey;
                    _myColorFour5=Colors.grey;
                    _myColorFive5=Colors.grey;
                }),color: _myColorOne5,),
                new IconButton(icon: new Icon(Icons.brightness_1),
                  onPressed: ()=>setState((){
                    _myColorOne5=Colors.orange;
                    _myColorTwo5=Colors.orange;
                    _myColorThree5=Colors.grey;
                    _myColorFour5=Colors.grey;
                    _myColorFive5=Colors.grey;
                }),color: _myColorTwo5,),
                new IconButton(icon: new Icon(Icons.brightness_1), 
                  onPressed: ()=>setState((){
                  _myColorOne5=Colors.orange;
                  _myColorTwo5=Colors.orange;
                  _myColorThree5=Colors.orange;
                  _myColorFour5=Colors.grey;
                  _myColorFive5=Colors.grey;
                }),color: _myColorThree5,),
                new IconButton(icon: new Icon(Icons.brightness_1), 
                  onPressed: ()=>setState((){
                  _myColorOne5=Colors.orange;
                  _myColorTwo5=Colors.orange;
                  _myColorThree5=Colors.orange;
                  _myColorFour5=Colors.orange;
                  _myColorFive5=Colors.grey;
                }),color: _myColorFour5,),
                new IconButton(icon: new Icon(Icons.brightness_1), 
                  onPressed: ()=>setState((){
                  _myColorOne5=Colors.orange;
                  _myColorTwo5=Colors.orange;
                  _myColorThree5=Colors.orange;
                  _myColorFour5=Colors.orange;
                  _myColorFive5=Colors.orange;
                }),color: _myColorFive5,),

            ],
          ),
          Row( //row 2
            children: [
              Container(
                    color: Colors.white,
                    width: cWidth,
                    child: Text(' ', textAlign: TextAlign.center),
                  ),
            ],
          ),
          Row( //row 7
            children: [
              Container(
                    padding: const EdgeInsets.all(16.0),
                    width: cWidth,
                    color: Colors.yellow,
                    child: Text('Question 6: ', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
            ],
          ),
          Row( //row 2
            children: [
              Container(
                    color: Colors.white,
                    width: cWidth,
                    child: Text(' ', textAlign: TextAlign.center),
                  ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(icon: new Icon(Icons.brightness_1),
                  onPressed: ()=>setState((){
                    _myColorOne6=Colors.orange;
                    _myColorTwo6=Colors.grey;
                    _myColorThree6=Colors.grey;
                    _myColorFour6=Colors.grey;
                    _myColorFive6=Colors.grey;
                }),color: _myColorOne6,),
                new IconButton(icon: new Icon(Icons.brightness_1),
                  onPressed: ()=>setState((){
                    _myColorOne6=Colors.orange;
                    _myColorTwo6=Colors.orange;
                    _myColorThree6=Colors.grey;
                    _myColorFour6=Colors.grey;
                    _myColorFive6=Colors.grey;
                }),color: _myColorTwo6,),
                new IconButton(icon: new Icon(Icons.brightness_1), 
                  onPressed: ()=>setState((){
                  _myColorOne6=Colors.orange;
                  _myColorTwo6=Colors.orange;
                  _myColorThree6=Colors.orange;
                  _myColorFour6=Colors.grey;
                  _myColorFive6=Colors.grey;
                }),color: _myColorThree6,),
                new IconButton(icon: new Icon(Icons.brightness_1), 
                  onPressed: ()=>setState((){
                  _myColorOne6=Colors.orange;
                  _myColorTwo6=Colors.orange;
                  _myColorThree6=Colors.orange;
                  _myColorFour6=Colors.orange;
                  _myColorFive6=Colors.grey;
                }),color: _myColorFour6,),
                new IconButton(icon: new Icon(Icons.brightness_1), 
                  onPressed: ()=>setState((){
                  _myColorOne6=Colors.orange;
                  _myColorTwo6=Colors.orange;
                  _myColorThree6=Colors.orange;
                  _myColorFour6=Colors.orange;
                  _myColorFive6=Colors.orange;
                }),color: _myColorFive6,),

            ],
          ),
          Row( //row 2
            children: [
              Container(
                    color: Colors.white,
                    width: cWidth,
                    child: Text(' ', textAlign: TextAlign.center),
                  ),
            ],
          ),
          Row( //row 7
            children: [
              Container(
                    padding: const EdgeInsets.all(16.0),
                    width: cWidth,
                    color: Colors.yellow,
                    child: Text('Question 7: ', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
            ],
          ),
          Row( //row 2
            children: [
              Container(
                    color: Colors.white,
                    width: cWidth,
                    child: Text(' ', textAlign: TextAlign.center),
                  ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(icon: new Icon(Icons.brightness_1),
                  onPressed: ()=>setState((){
                    _myColorOne7=Colors.orange;
                    _myColorTwo7=Colors.grey;
                    _myColorThree7=Colors.grey;
                    _myColorFour7=Colors.grey;
                    _myColorFive7=Colors.grey;
                }),color: _myColorOne7,),
                new IconButton(icon: new Icon(Icons.brightness_1),
                  onPressed: ()=>setState((){
                    _myColorOne7=Colors.orange;
                    _myColorTwo7=Colors.orange;
                    _myColorThree7=Colors.grey;
                    _myColorFour7=Colors.grey;
                    _myColorFive7=Colors.grey;
                }),color: _myColorTwo7,),
                new IconButton(icon: new Icon(Icons.brightness_1), 
                  onPressed: ()=>setState((){
                  _myColorOne7=Colors.orange;
                  _myColorTwo7=Colors.orange;
                  _myColorThree7=Colors.orange;
                  _myColorFour7=Colors.grey;
                  _myColorFive7=Colors.grey;
                }),color: _myColorThree7,),
                new IconButton(icon: new Icon(Icons.brightness_1), 
                  onPressed: ()=>setState((){
                  _myColorOne7=Colors.orange;
                  _myColorTwo7=Colors.orange;
                  _myColorThree7=Colors.orange;
                  _myColorFour7=Colors.orange;
                  _myColorFive7=Colors.grey;
                }),color: _myColorFour7,),
                new IconButton(icon: new Icon(Icons.brightness_1), 
                  onPressed: ()=>setState((){
                  _myColorOne7=Colors.orange;
                  _myColorTwo7=Colors.orange;
                  _myColorThree7=Colors.orange;
                  _myColorFour7=Colors.orange;
                  _myColorFive7=Colors.orange;
                }),color: _myColorFive7,),

            ],
          ),
          Row( //row 2
            children: [
              Container(
                    color: Colors.white,
                    width: cWidth,
                    child: Text(' ', textAlign: TextAlign.center),
                  ),
            ],
          ),
          Row( //row 7
            children: [
              Container(
                    padding: const EdgeInsets.all(16.0),
                    width: cWidth,
                    color: Colors.yellow,
                    child: Text('Question 8: ', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
            ],
          ),
          Row( //row 2
            children: [
              Container(
                    color: Colors.white,
                    width: cWidth,
                    child: Text(' ', textAlign: TextAlign.center),
                  ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(icon: new Icon(Icons.brightness_1),
                  onPressed: ()=>setState((){
                    _myColorOne8=Colors.orange;
                    _myColorTwo8=Colors.grey;
                    _myColorThree8=Colors.grey;
                    _myColorFour8=Colors.grey;
                    _myColorFive8=Colors.grey;
                }),color: _myColorOne8,),
                new IconButton(icon: new Icon(Icons.brightness_1),
                  onPressed: ()=>setState((){
                    _myColorOne8=Colors.orange;
                    _myColorTwo8=Colors.orange;
                    _myColorThree8=Colors.grey;
                    _myColorFour8=Colors.grey;
                    _myColorFive8=Colors.grey;
                }),color: _myColorTwo8,),
                new IconButton(icon: new Icon(Icons.brightness_1), 
                  onPressed: ()=>setState((){
                  _myColorOne8=Colors.orange;
                  _myColorTwo8=Colors.orange;
                  _myColorThree8=Colors.orange;
                  _myColorFour8=Colors.grey;
                  _myColorFive8=Colors.grey;
                }),color: _myColorThree8,),
                new IconButton(icon: new Icon(Icons.brightness_1), 
                  onPressed: ()=>setState((){
                  _myColorOne8=Colors.orange;
                  _myColorTwo8=Colors.orange;
                  _myColorThree8=Colors.orange;
                  _myColorFour8=Colors.orange;
                  _myColorFive8=Colors.grey;
                }),color: _myColorFour8,),
                new IconButton(icon: new Icon(Icons.brightness_1), 
                  onPressed: ()=>setState((){
                  _myColorOne8=Colors.orange;
                  _myColorTwo8=Colors.orange;
                  _myColorThree8=Colors.orange;
                  _myColorFour8=Colors.orange;
                  _myColorFive8=Colors.orange;
                }),color: _myColorFive8,),

            ],
          ),
          Row( //row 2
            children: [
              Container(
                    color: Colors.white,
                    width: cWidth,
                    child: Text(' ', textAlign: TextAlign.center),
                  ),
            ],
          ),
          Row( //row 7
            children: [
              Container(
                    padding: const EdgeInsets.all(16.0),
                    width: cWidth,
                    color: Colors.yellow,
                    child: Text('Question 9: ', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
            ],
          ),
          Row( //row 2
            children: [
              Container(
                    color: Colors.white,
                    width: cWidth,
                    child: Text(' ', textAlign: TextAlign.center),
                  ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(icon: new Icon(Icons.brightness_1),
                  onPressed: ()=>setState((){
                    _myColorOne9=Colors.orange;
                    _myColorTwo9=Colors.grey;
                    _myColorThree9=Colors.grey;
                    _myColorFour9=Colors.grey;
                    _myColorFive9=Colors.grey;
                }),color: _myColorOne9,),
                new IconButton(icon: new Icon(Icons.brightness_1),
                  onPressed: ()=>setState((){
                    _myColorOne9=Colors.orange;
                    _myColorTwo9=Colors.orange;
                    _myColorThree9=Colors.grey;
                    _myColorFour9=Colors.grey;
                    _myColorFive9=Colors.grey;
                }),color: _myColorTwo9,),
                new IconButton(icon: new Icon(Icons.brightness_1), 
                  onPressed: ()=>setState((){
                  _myColorOne9=Colors.orange;
                  _myColorTwo9=Colors.orange;
                  _myColorThree9=Colors.orange;
                  _myColorFour9=Colors.grey;
                  _myColorFive9=Colors.grey;
                }),color: _myColorThree9,),
                new IconButton(icon: new Icon(Icons.brightness_1), 
                  onPressed: ()=>setState((){
                  _myColorOne9=Colors.orange;
                  _myColorTwo9=Colors.orange;
                  _myColorThree9=Colors.orange;
                  _myColorFour9=Colors.orange;
                  _myColorFive9=Colors.grey;
                }),color: _myColorFour9,),
                new IconButton(icon: new Icon(Icons.brightness_1), 
                  onPressed: ()=>setState((){
                  _myColorOne9=Colors.orange;
                  _myColorTwo9=Colors.orange;
                  _myColorThree9=Colors.orange;
                  _myColorFour9=Colors.orange;
                  _myColorFive9=Colors.orange;
                }),color: _myColorFive9,),

            ],
          ),
          Row( //row 2
            children: [
              Container(
                    color: Colors.white,
                    width: cWidth,
                    child: Text(' ', textAlign: TextAlign.center),
                  ),
            ],
          ),
          Row( //row 7
            children: [
              Container(
                    padding: const EdgeInsets.all(16.0),
                    width: cWidth,
                    color: Colors.yellow,
                    child: Text('Question 10: ', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
            ],
          ),
          Row( //row 2
            children: [
              Container(
                    color: Colors.white,
                    width: cWidth,
                    child: Text(' ', textAlign: TextAlign.center),
                  ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(icon: new Icon(Icons.brightness_1),
                  onPressed: ()=>setState((){
                    _myColorOne0=Colors.orange;
                    _myColorTwo0=Colors.grey;
                    _myColorThree0=Colors.grey;
                    _myColorFour0=Colors.grey;
                    _myColorFive0=Colors.grey;
                }),color: _myColorOne0,),
                new IconButton(icon: new Icon(Icons.brightness_1),
                  onPressed: ()=>setState((){
                    _myColorOne0=Colors.orange;
                    _myColorTwo0=Colors.orange;
                    _myColorThree0=Colors.grey;
                    _myColorFour0=Colors.grey;
                    _myColorFive0=Colors.grey;
                }),color: _myColorTwo0,),
                new IconButton(icon: new Icon(Icons.brightness_1), 
                  onPressed: ()=>setState((){
                  _myColorOne0=Colors.orange;
                  _myColorTwo0=Colors.orange;
                  _myColorThree0=Colors.orange;
                  _myColorFour0=Colors.grey;
                  _myColorFive0=Colors.grey;
                }),color: _myColorThree0,),
                new IconButton(icon: new Icon(Icons.brightness_1), 
                  onPressed: ()=>setState((){
                  _myColorOne0=Colors.orange;
                  _myColorTwo0=Colors.orange;
                  _myColorThree0=Colors.orange;
                  _myColorFour0=Colors.orange;
                  _myColorFive0=Colors.grey;
                }),color: _myColorFour0,),
                new IconButton(icon: new Icon(Icons.brightness_1), 
                  onPressed: ()=>setState((){
                  _myColorOne0=Colors.orange;
                  _myColorTwo0=Colors.orange;
                  _myColorThree0=Colors.orange;
                  _myColorFour0=Colors.orange;
                  _myColorFive0=Colors.orange;
                }),color: _myColorFive0,),

            ],
          ),
          Row( //row 2
            children: [
              Container(
                    color: Colors.white,
                    width: cWidth,
                    child: Text(' ', textAlign: TextAlign.center),
                  ),
            ],
          ),
        ])));
  }
}
