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
        child: ListWheelScrollView(//similar to Listview only here its scrollable
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
          squeeze: 1.0,//ListwheelScrollview widget's propertie for arc size..
          itemExtent: 180,
          diameterRatio: 1.9,
          offAxisFraction: -0.5,//ListwheelScrollview widget's propertie for arc tilt..
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
        boxShadow: [
          BoxShadow(
            offset: Offset(5, 5),
            blurRadius: radius,
            color: Color(0XFF585858).withOpacity(.3),//to make neomorphic button
//            color: Color(0XFF383838).withOpacity(.4),//another style
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
