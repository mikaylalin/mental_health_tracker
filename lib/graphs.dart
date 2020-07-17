part of my_library;

class Graphs extends StatefulWidget {
  final Widget child;

  Graphs({Key key, this.child}) : super(key: key);

  _GraphsState createState() => _GraphsState();
}

class _GraphsState extends State<Graphs> {
  List<charts.Series<Line, int>> _seriesLineData;

  _generateData() {
    var linesalesdata = [
      new Line(1, 2),
      new Line(2, 1),
      new Line(3, 3),
      new Line(4, 1),
      new Line(5, 2),
      new Line(6, 3),
    ];
    var linesalesdata1 = [
      new Line(1, 6),
      new Line(2, 7),
      new Line(3, 8),
      new Line(4, 6),
      new Line(5, 9),
      new Line(6, 8),
    ];

    var linesalesdata2 = [
      new Line(1, 1),
      new Line(2, 3),
      new Line(3, 4),
      new Line(4, 2),
      new Line(5, 5),
      new Line(6, 3),
    ];

    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff990099)),
        id: 'Anxiety',
        data: linesalesdata,
        domainFn: (Line line, _) => line.date,
        measureFn: (Line line, _) => line.emotion,
      ),
    );
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff109618)),
        id: 'Happy',
        data: linesalesdata1,
        domainFn: (Line line, _) => line.date,
        measureFn: (Line line, _) => line.emotion,
      ),
    );
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xffff9900)),
        id: 'Depressed',
        data: linesalesdata2,
        domainFn: (Line line, _) => line.date,
        measureFn: (Line line, _) => line.emotion,
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _seriesLineData = List<charts.Series<Line, int>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff1976d2),
          //backgroundColor: Color(0xff308e1c),
          title: Text('Tester Graph'),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              child: Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      'Emotions over time',
                      style: TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: charts.LineChart(_seriesLineData,
                          defaultRenderer:
                              new charts.LineRendererConfig(includeArea: true),
                          animate: true,
                          animationDuration: Duration(seconds: 5),
                          behaviors: [
                            new charts.ChartTitle('Date',
                                behaviorPosition:
                                    charts.BehaviorPosition.bottom,
                                titleOutsideJustification:
                                    charts.OutsideJustification.middleDrawArea),
                            new charts.ChartTitle('Emotion Level',
                                behaviorPosition: charts.BehaviorPosition.start,
                                titleOutsideJustification:
                                    charts.OutsideJustification.middleDrawArea),
                            new charts.ChartTitle('Emotions',
                                behaviorPosition: charts.BehaviorPosition.end,
                                titleOutsideJustification:
                                    charts.OutsideJustification.middleDrawArea),
                            new charts.SeriesLegend(
                                outsideJustification:
                                    charts.OutsideJustification.endDrawArea,
                                horizontalFirst: false,
                                desiredMaxRows: 2,
                                cellPadding: new EdgeInsets.only(
                                    right: 4.0, bottom: 4.0),
                                entryTextStyle: charts.TextStyleSpec(
                                    color:
                                        charts.Color(r: 127, g: 63, b: 191))),
                            new charts.SlidingViewport(),
                            new charts.PanAndZoomBehavior()
                          ]),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Line {
  int date;
  int emotion;

  Line(this.date, this.emotion);
}
