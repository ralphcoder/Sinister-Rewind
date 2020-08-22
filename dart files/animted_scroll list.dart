import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class temp4 extends StatefulWidget {
  @override
  _temp4State createState() => _temp4State();
}

class _temp4State extends State<temp4> {
  double size = 28;
  int radius = 8;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Container(
//        decoration: BoxDecoration(
////            gradient: LinearGradient(
//////                begin: Alignment.topCenter,
//////                end: Alignment.bottomCenter,
////////                stops: [
////////              1.0,
////////              3.1,
////////            ],
//////                colors: [
//////              Colors.white12,
//////              Colors.white,
//////              Colors.white12,
//////            ])),
        child: ListWheelScrollView(
          children: [
            NewWidget(
                size: size,
                l: Icon(
                  Icons.brush,
                  color: Colors.white54,
                  size: size,
                ),
                s: 'Brush'),
            NewWidget(
                size: size,
                l: Icon(
                  Icons.style,
                  color: Colors.white54,
                  size: size,
                ),
                s: 'Style'),
            NewWidget(
                size: size,
                l: Icon(
                  Icons.build,
                  color: Colors.white54,
                  size: size,
                ),
                s: 'Build'),
            NewWidget(
                size: size,
                l: Icon(
                  Icons.add,
                  color: Colors.white54,
                  size: size,
                ),
                s: 'Add'),
            NewWidget(
                size: size,
                l: Icon(
                  Icons.delete,
                  color: Colors.white54,
                  size: size,
                ),
                s: 'Delete'),
            NewWidget(
                size: size,
                l: Icon(
                  Icons.details,
                  color: Colors.white54,
                  size: size,
                ),
                s: 'Details'),
            NewWidget(
                size: size,
                l: Icon(
                  Icons.email,
                  color: Colors.white54,
                  size: size,
                ),
                s: 'Email'),
          ],
          squeeze: 1.0,
          itemExtent: 180,
          diameterRatio: 1.9,
          offAxisFraction: -0.5,
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  final Widget l;
  final String s;
  double radius = 8;
  NewWidget({this.size, this.l, this.s});
  final double size;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 1000),
      curve: Curves.elasticInOut,
      margin: EdgeInsets.symmetric(horizontal: 70, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(20.0),
//        gradient:
//            LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight,
////            stops: [
////              0.01,
////              0.5,
////            ],
//                colors: [
//              Color(0XFF181818),
//              Color(0XFF383838),
//            ]),
        boxShadow: [
          BoxShadow(
            offset: Offset(5, 5),
            blurRadius: radius,
            color: Color(0XFF585858).withOpacity(.3),
//            color: Color(0XFF383838).withOpacity(.4),
          ),
        ],
      ),
      child: Center(
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 25),
          leading: l,
          trailing: Text(
            s,
            style: TextStyle(
                fontSize: 21,
                color: Colors.white54,
                fontWeight: FontWeight.w200),
          ),
        ),
      ),
    );
  }
}
