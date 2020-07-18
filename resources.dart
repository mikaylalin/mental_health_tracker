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
        body: new Column(
          children: <Widget>[SizedBox(height: 30),
          Text('  National Suicide Prevention Lifeline:',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold)),
          Text('1-800-273-TALK (8255)'),
          SizedBox(height:20),
          Text('Crisis Text Line:',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold)),
          Text('Text “HELLO” to 741741'),
          SizedBox(height:20),
          Text('National Alliance on Mental Illness:',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold)),
          Text('1-800-950-NAMI (6264)'),
          Text('    *can only be reached Monday through Friday, 10 am–6 pm, ET',style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.bold)),
          SizedBox(height:20),
          Text('Substance Abuse and Mental Health Services Administration (SAMHSA):',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold)),
          Text('1-800-662-HELP (4357)'),
          Text('    *For general information on mental health and location of treatment services in your area',style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.bold)),
          SizedBox(height:20),
          Text('Disaster Distress Helpline:',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold)),
          Text('1-800-985-5990 or text “TalkWithUs” to 66746'),
          Text('*Provides immediate crisis counseling for people who are experiencing emotional distress related to any natural or human-caused disaster',style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.bold))
          ]
        ));
  }
}
