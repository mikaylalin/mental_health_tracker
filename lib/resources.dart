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
        body: Center(
            child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.all(15.0),
                children: <Widget>[
              SizedBox(height: 30),
              Text('National Suicide Prevention Lifeline:',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.red[700]),
                  textAlign: TextAlign.center),
              InkWell(
                  child: new Text('1-800-273-TALK (8255)',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.red[700],
                          decoration: TextDecoration.underline),
                      textAlign: TextAlign.center),
                  onTap: () => launch('tel://1-800-273-TALK')),
              SizedBox(height: 20),
              Text('Crisis Text Line:',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.red[700]),
                  textAlign: TextAlign.center),
              InkWell(
                  child: new Text('Text “HELLO” to 741741',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.red[700],
                          decoration: TextDecoration.underline),
                      textAlign: TextAlign.center),
                  onTap: () => launch('sms://741741')),
              SizedBox(height: 20),
              Text('National Alliance on Mental Illness:',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
              InkWell(
                  child: new Text('1-800-950-NAMI (6264)',
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.deepPurple[800],
                          decoration: TextDecoration.underline),
                      textAlign: TextAlign.center),
                  onTap: () => launch('tel://1-800-950-NAMI')),
              SizedBox(height: 7),
              Text('*can only be reached Monday through Friday, 10 am–6 pm, ET',
                  style: TextStyle(fontSize: 14.0),
                  textAlign: TextAlign.center),
              SizedBox(height: 20),
              Text(
                  'Substance Abuse and Mental Health Services Administration (SAMHSA):',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
              InkWell(
                  child: new Text('1-800-662-HELP (4357)',
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.deepPurple[800],
                          decoration: TextDecoration.underline),
                      textAlign: TextAlign.center),
                  onTap: () => launch('tel://1-800-662-HELP')),
              SizedBox(height: 7),
              Text(
                  '*For general information on mental health and location of treatment services in your area',
                  style: TextStyle(fontSize: 14.0),
                  textAlign: TextAlign.center),
              SizedBox(height: 20),
              Text('Disaster Distress Helpline:',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
              InkWell(
                  child: new Text(
                      '1-800-985-5990 or text “TalkWithUs” to 66746 *click to call',
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.deepPurple[800],
                          decoration: TextDecoration.underline),
                      textAlign: TextAlign.center),
                  onTap: () => launch('tel://1-800-985-5990')),
              SizedBox(height: 7),
              Text(
                  '*Provides immediate crisis counseling for people who are experiencing emotional distress related to any natural or human-caused disaster',
                  style: TextStyle(fontSize: 14.0),
                  textAlign: TextAlign.center),
              SizedBox(height: 20),
              InkWell(
                  child: new Text(
                      'Collection of Mental Health Resources for Specific Areas',
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.blue[800],
                          decoration: TextDecoration.underline),
                      textAlign: TextAlign.center),
                  onTap: () => launch(
                      'https://socialworklicensemap.com/social-work-resources/mental-health-resources-list/')),
              SizedBox(height: 20),
              InkWell(
                  child: new Text('National Alliance on Mental Illness',
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.blue[800],
                          decoration: TextDecoration.underline),
                      textAlign: TextAlign.center),
                  onTap: () => launch('https://www.nami.org/Home')),
              SizedBox(height: 20),
              InkWell(
                  child: new Text('National Institute of Mental Health',
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.blue[800],
                          decoration: TextDecoration.underline),
                      textAlign: TextAlign.center),
                  onTap: () => launch('https://www.nimh.nih.gov/index.shtml')),
              SizedBox(height: 20),
              InkWell(
                  child: new Text(
                      'Anxiety and Depression Association of America',
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.blue[800],
                          decoration: TextDecoration.underline),
                      textAlign: TextAlign.center),
                  onTap: () => launch('https://adaa.org/')),
              SizedBox(height: 20),
              InkWell(
                  child: new Text('Depression and Bipolar Support Alliance',
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.blue[800],
                          decoration: TextDecoration.underline),
                      textAlign: TextAlign.center),
                  onTap: () => launch('https://www.dbsalliance.org/')),
              SizedBox(height: 20),
              InkWell(
                  child: new Text('Psychology Help Center (APA)',
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.blue[800],
                          decoration: TextDecoration.underline),
                      textAlign: TextAlign.center),
                  onTap: () => launch('https://www.apa.org/helpcenter')),
              SizedBox(height: 20),
              InkWell(
                  child: new Text('Finding Help (Mental Health America)',
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.blue[800],
                          decoration: TextDecoration.underline),
                      textAlign: TextAlign.center),
                  onTap: () => launch(
                      'https://www.mhanational.org/finding-help-when-get-it-and-where-go')),
            ])));
  }
}
