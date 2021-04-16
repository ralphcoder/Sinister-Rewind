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
              onPressed: () {//On pressed method to tweek the changes when clicked
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
              child: AnimatedContainer(//Similar to Container widget only here its aminated between two values
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
                    color: Colors.black,
                  ),
                )),
                decoration: BoxDecoration(
                  color: _color,
                  borderRadius: BorderRadius.circular(30),

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
            if (dheight == 410) {//If conditions to check the state of the box opend or closed
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
