import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  color: Colors.redAccent,
                  width: 100,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      color: Colors.yellowAccent,
                      width: 100,
                      height: 100,
                    ),
                    Container(
                      color: Colors.yellow,
                      width: 100,
                      height: 100,
                    )
                  ],
                ),
                Container(
                  color: Colors.blueAccent,
                  width: 100,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
