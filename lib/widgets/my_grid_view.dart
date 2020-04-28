import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'my_card.dart';


class MyPageView extends StatelessWidget {
  final Color backgroundColor;
  final Color shadowWhite;
  final Color shadowBlack;

  const MyPageView({this.backgroundColor, this.shadowBlack, this.shadowWhite});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView(
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.all(30.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0
        ),
        children: <Widget>[
          MyCard(
            backgroundColor: backgroundColor,
            shadowBlack: shadowBlack,
            shadowWhite: shadowWhite,
            title: "Smart tv",
            iconColor: Colors.grey[850],
            icon: MdiIcons.monitorDashboard,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(10.0),
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0)
            ),
          ),
          MyCard(
            backgroundColor: backgroundColor,
            shadowBlack: shadowBlack,
            shadowWhite: shadowWhite,
            title: "Wi-Fi",
            iconColor: Colors.blueAccent,
            icon: MdiIcons.wifi,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(30.0),
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0)
            ),
          ),
          MyCard(
            backgroundColor: backgroundColor,
            shadowBlack: shadowBlack,
            shadowWhite: shadowWhite,
            title: "Temperature",
            icon: MdiIcons.thermometerLines,
            iconColor: Colors.redAccent,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(10.0)
            ),
          ),
          MyCard(
            backgroundColor: backgroundColor,
            shadowBlack: shadowBlack,
            shadowWhite: shadowWhite,
            title: "Add more",
            icon: Icons.add_circle,
            iconColor: Colors.green,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(30.0)
            ),
          ),
        ],
      )
    );
  }
}