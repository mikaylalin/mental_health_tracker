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
        
        images: [
          NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
          NetworkImage('https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
          ExactAssetImage('images/the_pomodoro_method-1.png'),
          ExactAssetImage('images/img1.jpeg'),
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
    
    /*
    children: <Widget>[
      CarouselSlider(
        items: [Text("Image 1"), NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png'), NetworkImage('https://www.publicdomainpictures.net/pictures/320000/velka/background-image.png')].map((i) {
          return Builder(
            builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                /*
                image: const DecorationImage(
                  image: NetworkImage('https:///flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                  fit: BoxFit.cover,
                ),
                */
                border: Border.all(
                  color: Colors.black,
                  width: 8,
                ),
              borderRadius: BorderRadius.circular(12),
                /*
                new AssetImage('images/img1.jpg'),
        new AssetImage('images/img2.jpg'),
        new AssetImage('images/img3.jpg'),
        */
              ),
            
            //child: "images/img.jpeg",
            //Text('text $i', style: TextStyle(fontSize: 16.0),)
            );
            },
          );
        }).toList(),
        carouselController: buttonCarouselController,
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height - 136,
          aspectRatio: 16/9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(seconds: 2),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          scrollDirection: Axis.vertical,
        ),
      ),
      /*
      RaisedButton(
        onPressed: () => buttonCarouselController.nextPage(
            duration: Duration(milliseconds: 300), curve: Curves.linear),
        child: Text('→'),
      )
      */
    ]
    */
  
}