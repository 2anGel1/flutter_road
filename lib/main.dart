import 'dart:ffi';

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ContactProfileApp());
}

class ContactProfileApp extends StatefulWidget {
  const ContactProfileApp({super.key});

  @override
  State<ContactProfileApp> createState() => _ContactProfileAppState();
}

class _ContactProfileAppState extends State<ContactProfileApp> {
  var ic = true;
  @override
  build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          leading: IconButton(
            icon: Icon(Icons.navigate_before),
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                ic ? Icons.star_border_outlined : Icons.star_sharp,
                color: Colors.black,
              ),
              onPressed: () {
                setState(() {
                  ic = !ic;
                });
              },
            )
          ],
        ),
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: 200,
                  color: Colors.grey,
                  width: double.infinity,
                  child: Center(child: Text("image")),
                  // child: Image.network(
                  //     "https://github.com/ptyagicodecamp/educative_flutter/raw/profile_1/assets/profile.jpg?raw=true",
                  //     fit: BoxFit.cover),
                ),
                Container(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Text(
                          "Petra Hargson",
                          style: TextStyle(fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 0.3,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
