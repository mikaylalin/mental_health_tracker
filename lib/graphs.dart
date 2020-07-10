part of my_library;

class Graphs extends StatefulWidget {
  @override
  _GraphsState createState() => _GraphsState();
}

class _GraphsState extends State<Graphs> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Graphs'),
        ),
        body: new Center(
          child: new Text('This is the graphs page'),
        ));
  }
}
