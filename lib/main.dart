import 'package:design_1/widgets/my_bottom_navigation_bar.dart';
import 'package:design_1/widgets/my_grid_view.dart';
import 'package:design_1/widgets/thermometer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


const backgroundColor = Color(0xFFE3EDF7);
const shadowBlack = Color(0xFFBCC5CD);
const shadowWhite = Color(0xFFFFFFFF);

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home()
    )
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double _width = 45;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: MediaQuery.of(context).padding.top + 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: Text(
                      "Home",
                      style: GoogleFonts.lato(
                        color: Color(0xFF23314A),
                        fontSize: 30.0,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: Text(
                      "User: Nina",
                      style: GoogleFonts.lato(
                        color: Color(0xFF23314A),
                        fontSize: 13.0,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(right: 30.0),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://www.bitcao.com.br/blog/wp-content/uploads/2017/06/wsi-imageoptim-vacinas-para-gatos-720x445.jpg")
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: shadowWhite,
                        offset: Offset(3,3),
                        blurRadius: 4.0
                      ),
                      BoxShadow(
                        color: shadowBlack,
                        offset: Offset(3.0, 3.0),
                        blurRadius: 3.0,
                      )
                    ]
                  ),
                )
              )
            ],
          ),
          MyPageView(
            backgroundColor: backgroundColor,
            shadowWhite: shadowWhite,
            shadowBlack: shadowBlack,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Temperature",
                      style: GoogleFonts.lato(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey[800]
                      ),
                    ),
                    Text(
                      "Lorem Ipsum is simply dummy",
                      style: GoogleFonts.lato(
                        fontSize: 12.0,
                        color: Colors.grey[800],
                        fontWeight: FontWeight.w600
                      ),
                    )
                  ],
                ),
                Text(
                  ((_width - 45)/10).toStringAsFixed(1) + "°C",
                  style: GoogleFonts.lato(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[800]
                  ),
                )
              ],
            ),
          ),
          Thermometer(
            backgroundColor: backgroundColor,
            shadowBlack: shadowBlack,
            shadowWhite: shadowWhite,
            width: _width,
            onPanUpdate: (DragUpdateDetails details){
              setState(() {
                if(details.delta.dx > 0 && _width < MediaQuery.of(context).size.width * 0.83){
                  if((_width + details.delta.dx >= MediaQuery.of(context).size.width * 0.83))
                    _width = _width;
                  else{
                    _width += details.delta.dx;
                  }
                }  
                if(details.delta.dx < 0 && _width > 45){
                  if((_width + details.delta.dx <= 45)){
                    _width = _width;
                  }
                  else{
                    _width += details.delta.dx;
                  }   
                }
              });
            },
          ),
          MyBottomNavigationBar(
            backgroundColor: backgroundColor,
            shadowBlack: shadowBlack,
            shadowWhite: shadowWhite,
          ),
          SizedBox(height: 10.0)
        ],
      )
    );
  }
}
