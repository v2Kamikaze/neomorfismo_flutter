import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {

  final Color backgroundColor;
  final Color shadowWhite;
  final Color shadowBlack;
  final IconData icon;

  const MyButton({Key key, this.backgroundColor, this.shadowWhite, this.shadowBlack, this.icon}) : super(key: key);

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          isPressed = !isPressed;
        });
      },
      child: Container(
        width: 50.0,
        height: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: widget.backgroundColor,
          boxShadow: [
            BoxShadow(
              color: widget.shadowWhite,
              offset: !isPressed ? Offset(-3, -3) : Offset(3, 3),
              blurRadius: 3
            ),
            BoxShadow(
              color: widget.shadowBlack,
              offset: !isPressed ? Offset(3, 3) : Offset(-3, -3),
              blurRadius: 3
            )
          ]
        ),
        child: Icon(
          widget.icon,
          size: 25.0,
          color: isPressed ? Colors.grey[850] : Colors.grey[700]
        ),
      )
    );
  }
}