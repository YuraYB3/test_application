// ignore_for_file: file_names

import 'dart:math';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _textSize = 24;
  Color _backgroundColor = Colors.white;
  void _changeTextSize() {
    if (_textSize > 72) {
      _textSize = 24;
    } else {
      setState(() {
        _textSize += 2;
      });
    }
  }

  void _changeBackgroundColor() {
    setState(() {
      _backgroundColor = Color.fromARGB(
        255,
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          _changeBackgroundColor();
        },
        child: Container(
          color: _backgroundColor,
          child: Center(
            child: GestureDetector(
              onTap: () {
                _changeTextSize();
              },
              child: Text(
                'Hey there',
                style: TextStyle(fontSize: _textSize.toDouble()),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
