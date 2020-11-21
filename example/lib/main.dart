import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fast_color_picker/fast_color_picker.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color _color = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('story_painter'),
        actions: [],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.red.withAlpha(60),
            child: FastColorPicker(
              selectedColor: _color,
              onColorSelected: (color) {
                setState(() {
                  _color = color;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

class OnlyImage extends StatelessWidget {
  final Uint8List imageData;

  const OnlyImage({Key key, this.imageData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('image'),
      ),
      body: Image.memory(
        imageData,
      ),
    );
  }
}
