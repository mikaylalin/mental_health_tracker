part of my_library;

class Discover extends StatefulWidget {
  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Discover'),
        ),
        body: new Center(
          child: new Text('This is the discover page'),
        ));
  }
}
