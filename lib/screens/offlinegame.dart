import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List alldeck = [
  'ac',
  'ad',
  'ah',
  'as',
  'c2',
  'c3',
  'c4',
  'c5',
  'c6',
  'c7',
  'c8',
  'c9',
  'c10',
  'd2',
  'd3',
  'd4',
  'd5',
  'd6',
  'd7',
  'd8',
  'd9',
  'd10',
  'h2',
  'h3',
  'h4',
  'h5',
  'h6',
  'h7',
  'h8',
  'h9',
  'h10',
  'jc',
  'jd',
  'jh',
  'js',
  'kc',
  'kd',
  'kh',
  'ks',
  'qc',
  'qd',
  'qh',
  'qs',
  's2',
  's3',
  's4',
  's5',
  's6',
  's7',
  's8',
  's9',
  's10',
];
List randomCards = [];
List finalCards = [];

class OfflineGame extends StatefulWidget {
  @override
  OfflineGameState createState() => OfflineGameState();
}

String mine = 'assets/images/deck.png';
String pc = 'assets/images/deck.png';

class OfflineGameState extends State<OfflineGame> {
  List<int> randomCard(){
  Set<int> random = Set();
  while(random.length <= 4){
    random.add(Random().nextInt(alldeck.length));
  }
  return random.toList();
}
  void initState() {
    super.initState();
    randomCards = randomCard();
    finalCards = [];
    for (int i = 0; i < randomCards.length; i++) {
      setState(() {
        finalCards.add(alldeck[randomCards[i]]);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Offline Game App Bar
          actions: <Widget>[],
          title: Text(
            'OFFLINE GAME',
          ),
          leading: IconButton(
            icon: Icon(Icons.explicit), // Exit to home screen
            onPressed: () {
              Navigator.pop(context, true);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // deckShuffle(), // To Shuffle the Deck of Cards
              CircleAvatar(
                // Avatar for Computer
                radius: 35,
                backgroundColor: Colors.deepOrangeAccent,
                child: CircleAvatar(
                    radius: 30,
                    child: Image.asset('assets/images/system_avatar.png')),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      // Container for Released Cards by User
                      height: 105,
                      width: 80,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent, width: 5),
                      ),
                      child: Image.asset(mine),
                    ),
                    Image.asset(
                      // Deck Image
                      'assets/images/deck.png',
                      height: 150.0,
                      width: 75.0,
                    ),
                    Container(
                      // Container for Released Cards by Computer
                      height: 105,
                      width: 80,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.deepOrangeAccent, width: 5)),
                      child: Image.asset(pc),
                    ),
                  ]),
              Text("Cards Value: "), // To display total cards value of User
              GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  physics: BouncingScrollPhysics(),
                  itemCount: finalCards.length,
                  shrinkWrap: true,
                  itemBuilder: (context, i) {
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assets/images/" + finalCards[i] + ".png",
                        height: 150,
                        width: 75.0,
                      ),
                    );
                  }),
              Row(
                // User Avatar and Deal and Drop Buttons
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    padding: const EdgeInsets.all(8.0),
                    textColor: Colors.white,
                    color: Colors.brown,
                    onPressed: () {},
                    child: const Text('Drop', style: TextStyle(fontSize: 20)),
                  ),
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.blueAccent,
                    child: CircleAvatar(
                      radius: 30,
                      child: Icon(
                        Icons.account_circle,
                        size: 30,
                      ),
                    ),
                  ),
                  RaisedButton(
                    padding: const EdgeInsets.all(8.0),
                    textColor: Colors.white,
                    color: Colors.blue,
                    onPressed: () {},
                    child: const Text('Deal', style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }
}
