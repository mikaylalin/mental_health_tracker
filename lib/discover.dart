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
        body: new CarouselDemo(),
    );
  }

}
class CarouselDemo extends StatelessWidget {
  
 @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: MediaQuery.of(context).size.height - 136,
      //width: MediaQuery.of(context).size.width,
      
      child: Carousel(
        boxFit: BoxFit.fitWidth,
        images: [
          ExactAssetImage('images/release_your_stress.jpg'),
          ExactAssetImage('images/guide_to_productivity.jpg'),
          ExactAssetImage('images/the_pomodoro_method.jpg'),
          ExactAssetImage('images/benefits_of_journaling.jpg'),
          ExactAssetImage('images/drink_water.jpg'),
        ],
      autoplay: false,
      autoplayDuration: Duration(seconds: 5),
      dotSize: 4.0,
      dotSpacing: 15.0,
      dotColor: Colors.grey,
      indicatorBgPadding: 5.0,
      dotBgColor: Colors.grey.withOpacity(0.1),
      borderRadius: true,
      moveIndicatorFromBottom: 180.0,
      noRadiusForIndicator: true,
    )
);

  }
  
}
