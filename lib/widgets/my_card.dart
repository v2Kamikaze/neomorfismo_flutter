import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCard extends StatelessWidget {
  final Color backgroundColor;
  final Color shadowWhite;
  final Color shadowBlack;
  final IconData icon;
  final String title;
  final BorderRadius borderRadius;
  final Color iconColor;

  MyCard({this.backgroundColor, this.shadowBlack, this.shadowWhite, this.icon, this.title, this.borderRadius, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius,
        boxShadow: [
          BoxShadow(
            color: shadowWhite,
            offset: Offset(-3.0,-3.0),
            blurRadius: 3.0
          ),
          BoxShadow(
            color: shadowBlack,
            offset: Offset(3.0, 3.0),
            blurRadius: 3.0,
          )
        ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
            icon,
            size: 40.0,
            color: iconColor
          ),
          Text(
            title,
            style: GoogleFonts.lato(
              color: Colors.grey[700],
              fontSize: 15.0,
            ),
          )
        ],
      ),
    );
  }
}