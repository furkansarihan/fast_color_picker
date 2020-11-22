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
      body: Center(
        child: FastColorPicker(
          selectedColor: _color,
          onColorSelected: (color) {
            setState(() {
              _color = color;
            });
          },
        ),
      ),
    );
  }
}
