part of my_library;

class Resources extends StatefulWidget {
  @override
  _ResourcesState createState() => _ResourcesState();
}

class _ResourcesState extends State<Resources> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Resources'),
        ),
        body: new Center(
          child: new Text('This is the resources page'),
        ));
  }
}
