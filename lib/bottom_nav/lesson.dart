import 'package:flutter/material.dart';

class LessonPage extends StatefulWidget {
  const LessonPage({super.key});

  @override
  State<LessonPage> createState() => _LessonPageState();
}

class _LessonPageState extends State<LessonPage> {
  bool _isTapped = false;
  bool _changeShape = false;
  bool _textPos = false;

  double left = 0;
  double offset = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Container(
                transform: Matrix4.rotationZ(0.2),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  shape: BoxShape.rectangle,
                  color: Colors.green,
                ),
                child: Text("Container 1"),
                alignment: Alignment.bottomRight,
              ),
              Container(
                transform: Matrix4.rotationZ(0.2),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  shape: BoxShape.rectangle,
                  color: Colors.yellow,
                ),
                child: Text("Container 2"),
                alignment: Alignment.bottomLeft,
              ),
              Container(
                transform: Matrix4.rotationZ(0.2),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  shape: BoxShape.rectangle,
                  color: Colors.blue,
                ),
                child: Text("Container 3"),
                alignment: Alignment.bottomLeft,
              ),
            ],
          ),
          AnimatedContainer(
            width: _isTapped ? 100 : 50,
            height: _isTapped ? 100 : 50,
            duration: Duration(seconds: 1),
            decoration: BoxDecoration(color: Colors.red),
            curve: Curves.easeIn,
          ),
          AnimatedContainer(
            width: _isTapped ? 100 : 50,
            height: _isTapped ? 100 : 50,
            duration: Duration(seconds: 1),
            decoration: _changeShape
                ? BoxDecoration(color: Colors.purple, shape: BoxShape.circle)
                : BoxDecoration(
                    color: Colors.purple, shape: BoxShape.rectangle),
            curve: Curves.easeIn,
          ),
          SizedBox(height: 20.0),
          GestureDetector(
            onTap: () {
              setState(() {
                _textPos = !_textPos;
              });
            },
            child: AnimatedContainer(
              alignment: _textPos ? Alignment.topCenter : Alignment.bottomRight,
              width: 100,
              height: 100,
              duration: Duration(seconds: 1),
              decoration: BoxDecoration(
                  color: Colors.purple, shape: BoxShape.rectangle),
              curve: Curves.easeIn,
              child: Text('Hello'),
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  if (offset == 0) {
                    offset = 50;
                  } else {
                    offset = 0;
                  }
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                transform: Matrix4.translationValues(offset, 0, 0),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                  child: Center(child: Text("Move Right")),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        children: [
          FloatingActionButton(
            onPressed: () {
              //change the shape and placement of container
              setState(() {
                _isTapped = !_isTapped;
              });
            },
            child: Icon(Icons.share_arrival_time_rounded),
          ),
          FloatingActionButton(
            onPressed: () {
              //change the shape and placement of container
              setState(() {
                _changeShape = !_changeShape;
              });
            },
            child: Icon(Icons.home),
          )
        ],
      ),
    );
  }
}
