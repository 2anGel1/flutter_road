import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ContactProfilePage());
}

class ContactProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blueGrey,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.star_border,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    print("Star preseed");
                  },
                )
              ],
            ),
            body: ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 250,
                      child: Image.network(
                          "https://github.com/ptyagicodecamp/educative_flutter/raw/profile_1/assets/profile.jpg?raw=true",
                          fit: BoxFit.cover),
                    )
                  ],
                )
              ],
            )));
  }
}
