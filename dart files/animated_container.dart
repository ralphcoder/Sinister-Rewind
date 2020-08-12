import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class temp extends StatefulWidget {
  @override
  _tempState createState() => _tempState();
}

class _tempState extends State<temp> {
  final controller = PageController(initialPage: 1);
  var _color = Colors.black12;
  double dheight = 100;
  double dwidth = 200;
  IconData icond = Icons.arrow_downward;

  @override
  Widget build(BuildContext context) {
    final pageView = PageView(
      controller: controller,
      children: [
        Container(
          height: 50,
          width: 40,
        )
      ],
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
            FlatButton(
              onPressed: () {
                setState(() {
                  if (dheight == 410) {
                    dheight = 100;
                    dwidth = 200;
                    icond = Icons.arrow_downward;
                    _color = Colors.black12;
                  } else {
                    dheight = 410;
                    dwidth = 300;
                    icond = Icons.arrow_upward;
                    _color = Colors.black54;
                  }
                });
              },
              child: AnimatedContainer(
                margin: EdgeInsets.all(20),
                height: dheight,
                width: dwidth,
                duration: Duration(milliseconds: 1200),
                curve: Curves.elasticInOut,
                child: Center(
                    child: Text(
                  'Awesome Flutter',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w200,
//                    color: Colors.white60,for the cloth effect
                    color: Colors.black,
                  ),
                )),
                decoration: BoxDecoration(
                  color: _color,
                  borderRadius: BorderRadius.circular(30),
//                  boxShadow: [
//                    BoxShadow(
//                      offset: Offset(5, 5),
//                      blurRadius: 8,
//                      color: _color.withOpacity(.4),
//                    ),
//                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          setState(() {
            if (dheight == 410) {
              dheight = 100;
              dwidth = 200;
              icond = Icons.arrow_downward;
              _color = Colors.black12;
            } else {
              dheight = 410;
              dwidth = 300;
              icond = Icons.arrow_upward;
              _color = Colors.black54;
            }
          });
        },
        child: Icon(icond),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 40,
        color: Colors.black54,
        child: Container(
          height: 60,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}