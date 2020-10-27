import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/game.dart';

class OfflineGame extends StatefulWidget {
  @override
  OfflineGameState createState() => OfflineGameState();
}

// Initialisation of Variables
//var asst = new AssetImage('assets/images/deck.png');
//var mine = new Image(image: asst);
//var pc = new Image(image: asst);

String mine = 'assets/images/deck.png';
String pc = 'assets/images/deck.png';

class OfflineGameState extends State<OfflineGame> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            deckShuffle(), // To Shuffle the Deck of Cards
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                // 5 Cards Display
                Image.asset(
                  dealSingle(),
                  height: 150.0,
                  width: 75.0,
                ),
                Image.asset(
                  dealSingle(),
                  height: 150.0,
                  width: 75.0,
                ),
                Image.asset(
                  dealSingle(),
                  height: 150.0,
                  width: 75.0,
                ),
                Image.asset(
                  dealSingle(),
                  height: 150.0,
                  width: 75.0,
                ),
                Image.asset(
                  dealSingle(),
                  height: 150.0,
                  width: 75.0,
                ),
              ],
            ),
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
