part of my_library;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Home')
          ),
        body: new Center(
          child: new Text('This is the home page'),
        ),
        floatingActionButton: FloatingActionButton(
        onPressed: () {
          // will add onPressed code here
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        hoverColor: Colors.blue,
      ),
    );
  }
}
