import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Thermometer extends StatelessWidget {

  final Color backgroundColor;
  final Color shadowWhite;
  final Color shadowBlack;
  final double width;
  final GestureDragUpdateCallback onPanUpdate;
  Thermometer({this.backgroundColor, this.shadowBlack, this.shadowWhite, this.onPanUpdate, this.width});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(30,20,30,20),
      child: Container(
        padding: EdgeInsets.all(7.0),
        height: 65.0,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32.5),
          border: Border.all(color: Colors.white.withAlpha(100)),
          color: backgroundColor,
          boxShadow: [
            BoxShadow(
              color: shadowBlack,
              offset: Offset(3, 3),
              blurRadius: 3.0
            ),
            BoxShadow(
              color: shadowWhite,
              offset: Offset(-3, -3),
              blurRadius: 3.0
            )
          ]
        ),
        child: GestureDetector(
          onPanUpdate: onPanUpdate,
          child: Container(
            height: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: backgroundColor,
              boxShadow: [
                BoxShadow(
                  color: shadowBlack,
                  offset: Offset(-3, -3),
                  blurRadius: 3.0
                ),
                BoxShadow(
                  color: shadowWhite,
                  offset: Offset(3, 3),
                  blurRadius: 3.0
                )
              ]
            ),
            child: Stack(
              children: <Widget>[
                Positioned(
                  child: AnimatedContainer(  
                    duration: Duration(milliseconds: 0),
                    width: width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Color(0xFFFEC754)
                    ),
                  ),
                ),
                Positioned(
                  top: 15.0,
                  left: MediaQuery.of(context).size.width * 0.6,
                  child: Text(
                    ((width - 45)/10).toStringAsFixed(1) + "°C",
                    style: GoogleFonts.lato(
                      fontSize: 15.0,
                      color: width <  MediaQuery.of(context).size.width * 0.6 ? Colors.grey[700] : Colors.white
                    ),
                  )
                ),
              ],
            )
          ),
        ),
      ),
    );
  }
}
