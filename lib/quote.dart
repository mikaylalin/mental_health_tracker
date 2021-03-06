part of my_library;

class Quote extends StatefulWidget {
  @override
  _QuoteState createState() => _QuoteState();
}

class _QuoteState extends State<Quote> {
  @override
  //random quote picker!
  Random rnd = new Random();
  var lst = [
    "Act as if what you do makes a difference. It does.\n\n- William James",
    "Success is not final, failure is not fatal: it is the courage to continue that counts.\n\n- Winston Churchill",
    "Never bend your head. Always hold it high. Look the world straight in the eye.\n\n- Helen Keller",
    "What you get by achieving your goals is not as important as what you become by achieving your goals.\n\n- Zig Ziglar",
    "Believe you can and you're halfway there.\n\n- Teddy Roosevelt",
    "When you have a dream, you've got to grab it and never let go.\n\n- Carol Burnett",
    "I can't change the direction of the wind, but I can adjust my sails to always reach my destination.\n\n- Jimmy Dean",
    "No matter what you're going through, there's a light at the end of the tunnel.\n\n- Demi Lovato",
    "It is our attitude at the beginning of a difficult task which, more than anything else, will affect its successful outcome.\n\n- William James",
    "Life is like riding a bicycle. To keep your balance, you must keep moving.\n\n- Albert Einstein",
    "Just don't give up trying to do what you really want to do. Where there is love and inspiration, I don't think you can go wrong.\n\n- Ella Fitzgerald",
    'Limit your "always" and your "nevers."\n\n- Amy Poehler',
    'Nothing is impossible. The word itself says "I am possible!"\n\n- Audrey Hepburn',
    "Try to be a rainbow in someone else's cloud.\n\n- Maya Angelou",
    "You do not find the happy life. You make it.\n\n- Camilla Eyring Kimball",
    "Inspiration comes from within yourself. One has to be positive. When you're positive, good things happen.\n\n- Deep Roy",
    "Sometimes you will never know the value of a moment, until it becomes a memory.\n\n- Dr. Suess",
    "The most wasted of days is one without laughter.\n\n- E. E. Cummings",
    "You must do the things you think you cannot do.\n\n- Eleanor Roosevelt",
    "It isn't where you came from. It's where you're going that counts.\n\n- Ella Fitzgerald",
    "It is never too late to be what you might have been.\n\n- George Eliot",
    "Stay close to anything that makes you glad you are alive.\n\n- Hafez",
    "You get what you give.\n\n- Jennifer Lopez",
    "Some people look for a beautiful place. Others make a place beautiful.\n\n- Hazrat Inayat Khan",
    "Happiness often sneaks in through a door you didn't know you left open.\n\n- John Barrymore",
    "Happiness is not by chance, but by choice.\n\n- Jim Rohn",
    "Life changes very quickly, in a very positive way, if you let it.\n\n- Lindsey Vonn",
    "Keep your face to the sunshine and you cannot see a shadow.\n\n- Helen Keller",
    "Never limit yourself because of others’ limited imagination; never limit others because of your own limited imagination.\n\n- Mae Jemison",
    "Be the change that you wish to see in the world.\n\n- Mahatma Gandhi",
    "Let us make our future now, and let us make our dreams tomorrow's reality.\n\n- Malala Yousafzai",
    "You don't always need a plan. Sometimes you just need to breathe, trust, let go, and see what happens.\n\n- Mandy Hale",
    "If I cannot do great things, I can do small things in a great way.\n\n- MLK Jr.",
    "My mission in life is not merely to survive, but to thrive.\n\n- Maya Angelou",
    "Spread love everywhere you go.\n\n- Mother Teresa",
    "Don't wait. The time will never be just right.\n\n- Napoleon Hill",
    "Life has got all those twists and turns. You've got to hold on tight and off you go.\n\n- Nicole Kidman",
    "If you look at what you have in life, you'll always have more.\n\n- Oprah Winfrey",
    "Inspiration is some mysterious blessing which happens when the wheels are turning smoothly.\n\n- Quentin Blake",
    "If you have good thoughts they will shine out of your face like sunbeams and you will always look lovely.\n\n- Roald Dahl",
    "No matter what people tell you, words and ideas can change the world.\n\n- Robin Williams",
    "Each person must live their life as a model for others.\n\n- Rosa Parks",
    "A champion is defined not by their wins but by how they can recover when they fall.\n\n- Serena Williams",
    "Motivation comes from working on things we care about.\n\n- Sheryl Sandberg",
  ];
  Widget build(BuildContext context) {
    //selects an element from the list of quotes
    var element = lst[rnd.nextInt(lst.length)];
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Poppins'),
        home: Scaffold(
          body: Center(
              child: Column(
                  //aligns button to center
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                Container(
                    //do we want a margin around the button??
                    //margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: ButtonTheme(
                  //button color
                  buttonColor: Colors.deepPurple,
                  //size of button
                  height: MediaQuery.of(context).size.height,
                  minWidth: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    //when button is pressed, it calls on the MyBottomNavigatorBar() method
                    //and gets rid of the button
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    //text inside the method
                    child: new Text(
                      element + "\n\n\n\n\n\n Tap to Continue >>>",

                      //sylistic properties of the text
                      style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ))
              ])),
        ));
  }
}
