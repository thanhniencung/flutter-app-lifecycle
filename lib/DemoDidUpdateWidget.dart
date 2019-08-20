import 'package:flutter/material.dart';

class Demo2 extends StatefulWidget {
  Demo2({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Demo2State createState() => _Demo2State();
}

class _Demo2State extends State<Demo2> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //MyText(),
          _counter % 2 == 0
              ? MyText(key: ObjectKey("123"))
              : MyText(key: ObjectKey("123")),
          Text(
            '$_counter',
            style: TextStyle(fontSize: 20),
          ),
          RaisedButton(
            child: Text("Increment"),
            onPressed: _incrementCounter,
          ),
        ],
      ),
    );
  }
}

class MyText extends StatefulWidget {
  MyText({Key key}) : super(key: key);

  @override
  _MyTextState createState() => _MyTextState();
}

class _MyTextState extends State<MyText> {
  @override
  Widget build(BuildContext context) {
    print("build");
    return Container();
  }

  @override
  void didUpdateWidget(MyText oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }
}
