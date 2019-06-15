import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.brown[200],
        appBar: AppBar(
          title: Text(
            'It wasn\'t me',
          ),
          backgroundColor: Colors.brown,
        ),
        body: Center(
          child: Image.asset('images/dog.png'),
        ),
      ),
    ));
