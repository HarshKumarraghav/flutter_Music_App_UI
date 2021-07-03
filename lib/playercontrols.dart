import 'package:flutter/material.dart';

import 'colors.dart';

class PlayerControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          controls(
            icon: Icons.repeat,
          ),
          controls(icon: Icons.skip_previous),
          playControls(),
          controls(
            icon: Icons.skip_next,
          ),
          controls(
            icon: Icons.shuffle,
          ),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class playControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: primaryColor,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: darkPrimaryColor.withOpacity(0.5),
            offset: Offset(5, 10),
            spreadRadius: 3,
            blurRadius: 10,
          ),
          BoxShadow(
            color: Colors.white70,
            offset: Offset(-3, -4),
            spreadRadius: -2,
            blurRadius: 20,
          ),
        ],
      ),
      child: Stack(
        children: <Widget>[
          Center(
            child: Container(
              margin: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: darkPrimaryColor,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: primaryColor,
                shape: BoxShape.circle,
                   boxShadow: [
          BoxShadow(
            color: darkPrimaryColor.withOpacity(0.5),
            offset: Offset(5, 10),
            spreadRadius: 3,
            blurRadius: 10,
          ),
          BoxShadow(
            color: Colors.white70,
            offset: Offset(-3, -4),
            spreadRadius: -2,
            blurRadius: 20,
          ),
        ],
              ),
              
              child: Center(child: Icon(Icons.play_arrow, size: 50,
              color: darkPrimaryColor,
              ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class controls extends StatelessWidget {
  final IconData icon;

  const controls({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: primaryColor,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: darkPrimaryColor.withOpacity(0.5),
            offset: Offset(5, 10),
            spreadRadius: 3,
            blurRadius: 10,
          ),
          BoxShadow(
            color: Colors.white70,
            offset: Offset(-3, -4),
            spreadRadius: -2,
            blurRadius: 20,
          ),
        ],
      ),
      child: Stack(
        children: <Widget>[
          Center(
            child: Container(
              margin: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
                   boxShadow: [
          BoxShadow(
            color: darkPrimaryColor.withOpacity(0.5),
            offset: Offset(5, 10),
            spreadRadius: 3,
            blurRadius: 10,
          ),
          BoxShadow(
            color: Colors.white70,
            offset: Offset(-3, -4),
            spreadRadius: -2,
            blurRadius: 20,
          ),
        ],
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: primaryColor,
                shape: BoxShape.circle,
              ),
              child: Center(child: Icon(icon, size: 30,
              color: darkPrimaryColor,
              ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
