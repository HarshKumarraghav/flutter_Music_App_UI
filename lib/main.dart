import 'package:flutter/material.dart';
import 'package:music_player/colors.dart';
import 'package:music_player/playercontrols.dart';

import 'albumart.dart';
import 'navbar.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double sliderValue = 2;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Navigationbar(),
          Container(
            height: height / 2.5,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return AlbumArt();
              },
              scrollDirection: Axis.horizontal,
            ),
          ),
          Text(
            'Sunflower',
            style: TextStyle(
              color: darkPrimaryColor,
              fontSize: 28,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'Post Malone',
            style: TextStyle(
              color: darkPrimaryColor,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          SliderTheme(
            data: SliderThemeData(trackHeight: 5,
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5), 
            ),
            child: Slider(
               activeColor: darkPrimaryColor,
               inactiveColor:  darkPrimaryColor.withOpacity(0.3),
              value: sliderValue,
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              },
              min: 0,
              max: 20,
            ),
          ),
          PlayerControls(),
          SizedBox(
height: 100,
          ),
        ],
      ),
    );
  }
}
