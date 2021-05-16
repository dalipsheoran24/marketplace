import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Myhomepage(),
    );
  }
}

class Myhomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            color: Colors.green,
            child: Row(
              children: [
              Expanded(child: getProfileWidget()),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: profileInfoWidget(),
              ),

            ],
            ),
          ),
          editProfileWidget(context),
          Expanded(
            child: Container(
               child: GridView.count(
                  crossAxisCount: 3,
                  children: <Widget>[
                    FlutterLogo(),
                    FlutterLogo(),
                    FlutterLogo(),
                    FlutterLogo(),
                    FlutterLogo(),
                    FlutterLogo(),
                    FlutterLogo(),
                    FlutterLogo(),
                    FlutterLogo(),
                    FlutterLogo(),
                    FlutterLogo(),
                    FlutterLogo(),
                    FlutterLogo(),
                    FlutterLogo(),
                    FlutterLogo(),
                    FlutterLogo(),
                    FlutterLogo(),
                    FlutterLogo(),

                  ],
                )
            ),
          ),


        ],
      ),

      ),

    );
  }

  Container editProfileWidget(BuildContext context) {
    return Container(
alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Edit Profile",
          style: TextStyle(
            fontSize: 24.0
          ),
        ),
      ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.05,
      color: Colors.blue,
    );
  }

  Row profileInfoWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        createInfoColumn("07", "Post"),
        createInfoColumn("2.1M", "Follower"),
        createInfoColumn("49", "Following"),
      ],
    );
  }

  Column createInfoColumn(String firstInfo, String secondInfo) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          child: Text(
            firstInfo,
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w900, color: Colors.white),
          ),
        ),
        Container(
          child: Text(
            secondInfo,
            style: TextStyle(fontSize: 10, color: Colors.white),
          ),
        ),
      ],
    );
  }

  Column getProfileWidget() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          child: Text(
            'N',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              fontStyle: FontStyle.italic,
            ),
          ),
          backgroundColor: Colors.white,
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          'Naresh Sheoran',
        ),
      ],
    );
  }
}
