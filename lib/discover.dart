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
  //randomly generates three images to display onto the screen
  Random rnd = new Random();
  var lst = [ExactAssetImage('images/release_your_stress.jpg'),
          ExactAssetImage('images/guide_to_productivity.jpg'),
          ExactAssetImage('images/the_pomodoro_method.jpg'),
          ExactAssetImage('images/benefits_of_journaling.jpg'),
          ExactAssetImage('images/drink_water.jpg'),];
  Widget build(BuildContext context) {
    var element1 = lst[rnd.nextInt(lst.length)];
    var element2 = lst[rnd.nextInt(lst.length)];
    var element3 = lst[rnd.nextInt(lst.length)];
    return SizedBox(
      child: Carousel(
        //fit images according the width
        boxFit: BoxFit.fitWidth,
        //adding images
        images: [element1, element2, element3],
        //onTap: () => launch(),
      //other specs
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
