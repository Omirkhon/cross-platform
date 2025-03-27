import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String displayText = "Hello World";
  Color backgroundColor = Colors.white;

  void addText() {
    setState(() {
      displayText = "New Text Added!";
    });
  }

  void removeText() {
    setState(() {
      displayText = "";
    });
  }

  void changeBackgroundColor() {
    setState(() {
      backgroundColor = backgroundColor == Colors.white ? Colors.blue : Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(title: Text('Flutter Buttons Example')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(displayText, style: TextStyle(fontSize: 24)),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: addText,
                child: Text('Add Text'),
              ),
              ElevatedButton(
                onPressed: removeText,
                child: Text('Remove Text'),
              ),
              ElevatedButton(
                onPressed: changeBackgroundColor,
                child: Text('Change Background Color'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}