import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(HelloFlutterApp());
}

class HelloFlutterApp extends StatefulWidget {
  @override
  _HelloFlutterAppState createState() => _HelloFlutterAppState();
}

String englishText = "Hello Flutter";
String frenchText = "Salut Flutter";

class _HelloFlutterAppState extends State<HelloFlutterApp> {
  String displayText = englishText;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          leading: Icon(Icons.home),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {
                setState(() {
                  displayText =
                      displayText == englishText ? frenchText : englishText;
                });
              },
            )
          ],
        ),
        body: Center(
          child: Text(
            displayText,
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
