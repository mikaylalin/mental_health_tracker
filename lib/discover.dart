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
/*
class CarouselDemo extends StatelessWidget {
  CarouselController buttonCarouselController = CarouselController();
  @override
  //randomly generates three images to display onto the screen
  Random rnd = new Random();
  var lst = [ExactAssetImage('images/release_your_stress.jpg'),
          ExactAssetImage('images/guide_to_productivity.jpg'),
          ExactAssetImage('images/the_pomodoro_method.jpg'),
          ExactAssetImage('images/benefits_of_journaling.jpg'),
          ExactAssetImage('images/drink_water.jpg'),];
  Widget build(BuildContext context){
    var element1 = lst[rnd.nextInt(lst.length)];
    var element2 = lst[rnd.nextInt(lst.length)];
    var element3 = lst[rnd.nextInt(lst.length)];
    Column(
    children: <Widget>[
      CarouselSlider(
        items: [element1,element2,element3,].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                element1,
                //width: MediaQuery.of(context).size.width,
                //margin: EdgeInsets.symmetric(horizontal: 5.0),
                //child: Text('text $i', style: TextStyle(fontSize: 16.0),)
              );
            },
          );
        }).toList(),
        carouselController: buttonCarouselController,
        options: CarouselOptions(
          autoPlay: false,
          enlargeCenterPage: true,
          viewportFraction: 0.9,
          aspectRatio: 2.0,
          initialPage: 2,
        ),
      ),
      RaisedButton(
        onPressed: () => buttonCarouselController.nextPage(
            duration: Duration(milliseconds: 300), curve: Curves.linear),
        child: Text('→'),
      )
    ]
  );
  }
}

*/






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


















/*
part of my_library;

class Discover extends StatefulWidget {
  //Discover({Key key, this.title}) : super(key: key);

  //final String title;

  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  /*
  PageController pageController;
  List <String> images = [
    'images/release_your_stress.jpg',
    'images/guide_to_productivity.jpg', 
    'images/the_pomodoro_method.jpg', 
    'images/benefits_of_journaling.jpg', 
    'images/drink_water.jpg',
  ];

  
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 1, viewportFraction: 0.6);
  }
  */
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Discover'),
        ),
        //body: new CarouselDemo(),
    );
  }

  /*
  imageSlider(int index) {
    return AnimatedBuilder(
        animation: pageController,
        builder: (context, widget) {
          double value = 1;
          if(pageController.position.haveDimensions){
            value = pageController.page - index;
            value = (1 - (value.abs() * 0.3.clamp(0.0, 1.0)));
          }
          return Center(
            child: SizedBox(
              height: Curves.easeInOut.transform(value) * 400.0,
              width: Curves.easeInOut.transform(value) * 350.0,
              child: widget,
            ),
          );
        },
      child: Column(
        // To centralize the children.
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // First child
          Container(
            margin: EdgeInsets.all(10.0),
            child: Image.asset(
              images[index],fit: BoxFit.cover
              ),
          ),
          // Second child
          Text(
            'foo',
            style: TextStyle(
             // Add text's style here
            ),
          ),
        ]
      ),
      );
  }
  */

}
class CarouselDemo extends StatelessWidget {
  
 @override
  Widget build(BuildContext context) {
    return SizedBox(
      
      child: Carousel(
        //fit images according the width
        boxFit: BoxFit.fitWidth,
        //adding images
        images: [
          ExactAssetImage('images/release_your_stress.jpg'),
          ExactAssetImage('images/guide_to_productivity.jpg'),
          ExactAssetImage('images/the_pomodoro_method.jpg'),
          ExactAssetImage('images/benefits_of_journaling.jpg'),
          ExactAssetImage('images/drink_water.jpg'),
        ],
        onImageTap: (index){print(index.toString());},
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

*/
