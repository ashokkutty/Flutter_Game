import 'dart:io';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/offlinegame.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar //App Bar of HomeScreen
          (
        title: Text('5 CARDS'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.exit_to_app, // To Exit from App
              color: Colors.white,
            ),
            tooltip: 'Exit',
            onPressed: () {
              AwesomeDialog(
                context: context,
                dialogType: DialogType.WARNING,
                animType: AnimType.BOTTOMSLIDE,
                headerAnimationLoop: false,
                title: 'Warning',
                desc: 'Do You Want to Exit?',
                btnCancelOnPress: () {
                  exit(0);
                },
                btnOkOnPress: () {},
              );
            },
          )
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new GestureDetector(
            onTap: () {}, //OnTap function for Logo to redirect to website
            child: new Image.asset(
              //Logo of App
              'assets/images/logo.png',
              width: 150,
              height: 150,
            ),
          ),
          Expanded(
              child: ListView(
            // Animation for Scrolling Game Options
            scrollDirection: Axis.horizontal,
            shrinkWrap: false,
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.all(20.0),
            children: <Widget>[
              Container(
                width: 80.0,
                height: 300,
                color: Colors.white10,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          OfflineGame())); // Directing Offlinegame.dart
                },
                child: Container(
                  width: 200.0,
                  height: 300,
                  child: Image.asset('assets/images/offline.png'),
                ),
              ),
              Container(
                width: 80.0,
                height: 300,
                color: Colors.white10,
              ),
              Container(
                width: 200.0,
                height: 300,
                child: Image.asset('assets/images/multiplayer.png'),
              ),
              Container(
                width: 80.0,
                height: 300,
                color: Colors.white10,
              ),
            ],
          )),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ClipRRect(
                  // To Have Rounded Corners
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    // Help Options
                    'assets/images/help.png',
                    height: 50.0,
                    width: 50.0,
                  )),
              Icon(
                // Setting Options
                Icons.settings,
                color: Colors.brown,
                size: 50.0,
              ),
            ],
          ),
        ],
      )),
    );
  }
}
//Unwanted Line for future reference

/*
Swipeable

mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Swiper(
                  //Swipeable Images

                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/offl.png',
                          width: 150,
                          height: 150,
                        ),
                        Image.asset(
                          'assets/images/multiplayer.png',
                          width: 150,
                          height: 150,
                        ),
                      ],
                    );
                  },
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemWidth: 300.0,
                  itemHeight: 400.0,
                  layout: SwiperLayout.TINDER,
                ),
 */
/*

Container(
                  height: 200,
                  width: 200,
                  child: ListView.builder(
                    padding: EdgeInsets.only(left: 16, right: 10),
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 10),
                        height: 300,
                        width: double.maxFinite,
                        child: Stack(
                          children: <Widget>[
                            Image.asset('assets/images/multiplayer.png'),
                            Image.asset('assets/images/offl.png'),
                            Image.asset('assets/images/multiplayer.png'),
                          ],
                        ),
                      );
                    },
                  ),
                )
 */
