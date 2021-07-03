import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:music_player/colors.dart';

class Navigationbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          navBarItem(icon: Icons.arrow_back_ios,),
          Text('Playing Now',
          style: TextStyle(color: darkPrimaryColor,
          fontWeight: FontWeight.w500,
            fontSize: 20,
            
          ),
          ),
          navBarItem(icon: Icons.list,),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class navBarItem extends StatelessWidget {

 final IconData icon;

  const navBarItem({Key? key,  required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: darkPrimaryColor.withOpacity(0.5),
          offset: Offset(5,10),  
          spreadRadius: 3, 
          blurRadius: 10,
          ),
          BoxShadow(
           color: Colors.white70 , 
           offset: Offset(-3,-4), 
           spreadRadius: -2, 
           blurRadius: 20,
          ),
       
        ],
          color: primaryColor, borderRadius: BorderRadius.circular(10)),
         child: Icon(icon,color: darkPrimaryColor,),
    );
  }
}
