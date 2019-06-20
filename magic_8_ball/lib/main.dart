import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Magic 8 Ball',
            ),
          ),
          body: MagicBallWidget(),
        ),
      ),
    );

class MagicBallWidget extends StatefulWidget {
  @override
  _MagicBallWidgetState createState() => _MagicBallWidgetState();
}

class _MagicBallWidgetState extends State<MagicBallWidget> {
  int number = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade200,
      child: Center(
        child: FlatButton(
          onPressed: () {
            setState(
              () {
                number = Random().nextInt(5) + 1;
              },
            );
          },
          child: Image.asset(
            'images/ball$number.png',
          ),
        ),
      ),
    );
  }
}
