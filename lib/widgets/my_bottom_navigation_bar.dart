import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'my_button.dart';

class MyBottomNavigationBar extends StatefulWidget {

  final Color backgroundColor;
  final Color shadowWhite;
  final Color shadowBlack;

  MyBottomNavigationBar({this.backgroundColor, this.shadowBlack, this.shadowWhite});

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        MyButton(
          backgroundColor: widget.backgroundColor,
          shadowBlack: widget.shadowBlack,
          shadowWhite: widget.shadowWhite,
          icon: Icons.home,
        ),
        MyButton(
          backgroundColor: widget.backgroundColor,
          shadowBlack: widget.shadowBlack,
          shadowWhite: widget.shadowWhite,
          icon: Icons.person,
        ),
        MyButton(
          backgroundColor: widget.backgroundColor,
          shadowBlack: widget.shadowBlack,
          shadowWhite: widget.shadowWhite,
          icon: MdiIcons.brightness5,
        ),
        MyButton(
          backgroundColor: widget.backgroundColor,
          shadowBlack: widget.shadowBlack,
          shadowWhite: widget.shadowWhite,
          icon: MdiIcons.bell,
        )
      ],
    );
  }
}