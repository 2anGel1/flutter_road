// import 'dart:ffi';

// import 'package:english_words/english_words.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// void main() {
//   runApp(ContactProfileApp());
// }

// enum APP_THEME { LIGHT, DARK }

// class ContactProfileApp extends StatefulWidget {
//   const ContactProfileApp({super.key});

//   @override
//   State<ContactProfileApp> createState() => _ContactProfileAppState();
// }

// class _ContactProfileAppState extends State<ContactProfileApp> {
//   var currentTheme = APP_THEME.LIGHT;
//   @override
//   build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         theme: currentTheme == APP_THEME.LIGHT
//             ? MyAppThemes.lightTheme()
//             : MyAppThemes.darkTheme(),
//         home: Scaffold(
//           appBar: appBar(),
//           body: appBody(),
//           floatingActionButton: FloatingActionButton(
//             mini: true,
//             child: Icon(Icons.threesixty),
//             onPressed: () {
//               setState(() {
//                 currentTheme = currentTheme == APP_THEME.DARK
//                     ? APP_THEME.LIGHT
//                     : APP_THEME.DARK;
//               });
//             },
//           ),
//         ));
//   }
// }

// //Demo app
// class DemoApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//             backgroundColor: Colors.black,
//             appBar: AppBar(
//               backgroundColor: Colors.black,
//               centerTitle: true,
//               // title: Text(
//               //   "World Clock",
//               //   style: TextStyle(
//               //       color: Colors.white,
//               //       fontWeight: FontWeight.w500,
//               //       fontSize: 16),
//               // ),
//               leading: Container(
//                 padding: const EdgeInsets.only(top: 20.0, left: 10.0),
//                 child: Text(
//                   "Edit",
//                   style: TextStyle(
//                       color: Colors.orange, fontWeight: FontWeight.w500),
//                 ),
//               ),
//               actions: <Widget>[
//                 IconButton(
//                     onPressed: () {},
//                     icon: Icon(
//                       Icons.add,
//                       color: Colors.orange,
//                     ))
//               ],
//             ),
//             body: Padding(
//               padding: const EdgeInsets.only(left: 10.0),
//               child: ListView(
//                 children: <Widget>[
//                   Text(
//                     "World Clock",
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 25),
//                   ),
//                   Divider(
//                     color: Colors.white,
//                     thickness: 0.3,
//                   ),
//                   buildContryZone("Today, +0HRS", "Abidjan", "2:57", "AM"),
//                   buildContryZone("Today, +1HRS", "Paris", "3:57", "AM"),
//                   buildContryZone("Today, -5HRS", "Ottawa", "9:57", "PM"),
//                   buildContryZone("Today, -5HRS", "Quebec City", "9:57", "PM"),
//                 ],
//               ),
//             )));
//   }
// }

// //Some usefull functions and class
// Widget appBody() {
//   return ListView(
//     children: <Widget>[
//       Column(
//         children: <Widget>[
//           Container(
//             height: 150,
//             color: Colors.grey,
//             width: double.infinity,
//             child: Center(child: Text("image")),
//             // child: Image.network(
//             //     "https://github.com/ptyagicodecamp/educative_flutter/raw/profile_1/assets/profile.jpg?raw=true",
//             //     fit: BoxFit.cover),
//           ),
//           Container(
//             height: 40,
//             padding: const EdgeInsets.only(right: 5.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: <Widget>[
//                 Text(
//                   "Petra Hargson",
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ],
//             ),
//           ),
//           Divider(
//             color: Colors.grey,
//             thickness: 0.5,
//           ),
//           Container(
//             margin: const EdgeInsets.only(bottom: 5.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 buildButton(Icon(Icons.call), "Call"),
//                 buildButton(Icon(Icons.message), "Text"),
//                 buildButton(Icon(Icons.video_call), "Video"),
//                 buildButton(Icon(Icons.email), "Email"),
//                 buildButton(Icon(Icons.directions), "Directions"),
//                 buildButton(Icon(Icons.attach_money), "Pay")
//               ],
//             ),
//           ),
//           Divider(
//             color: Colors.grey,
//             thickness: 0.5,
//           ),
//           addingListTile(
//               Icon(
//                 Icons.call,
//                 color: Colors.grey,
//                 size: 20,
//               ),
//               "05-66-39-87-81",
//               "mobile",
//               Icons.message),
//           addingListTile(Text(""), "07-59-90-16-06", "other", Icons.message),
//           Divider(
//             color: Colors.grey,
//             thickness: 0.5,
//           ),
//           addingListTile(
//               Icon(
//                 Icons.email,
//                 color: Colors.grey,
//                 size: 20,
//               ),
//               "ange@gmail.com",
//               "work",
//               null),
//           Divider(
//             color: Colors.grey,
//             thickness: 0.5,
//           ),
//           addingListTile(
//               Icon(
//                 Icons.location_on,
//                 color: Colors.grey,
//                 size: 20,
//               ),
//               "Angré CHU",
//               "home",
//               Icons.directions),
//         ],
//       )
//     ],
//   );
// }

// AppBar appBar() {
//   return AppBar(
//     leading: IconButton(
//       icon: Icon(Icons.arrow_back),
//       onPressed: () {},
//     ),
//     actions: <Widget>[
//       IconButton(
//         icon: Icon(Icons.star_border_outlined),
//         onPressed: () {},
//       )
//     ],
//   );
// }

// Widget buildButton(icon, text) {
//   return Column(
//     children: <Widget>[
//       IconButton(
//         icon: icon,
//         onPressed: () {},
//       ),
//       Text(
//         text,
//         style: TextStyle(fontSize: 12),
//       )
//     ],
//   );
// }

// Widget addingListTile(leading, title, subtitle, trailing) {
//   return ListTile(
//     leading: leading,
//     title: Text(title,
//         style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15)),
//     subtitle: Text(subtitle),
//     trailing: IconButton(
//       icon: Icon(
//         trailing,
//       ),
//       onPressed: () {},
//     ),
//   );
// }

// Widget buildContryZone(timezone, city, hour, timeof) {
//   return Column(
//     children: <Widget>[
//       Container(
//         padding: const EdgeInsets.only(right: 10.0),
//         margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Text(
//                   timezone,
//                   style: TextStyle(
//                       fontSize: 12,
//                       color: Colors.grey,
//                       fontWeight: FontWeight.w500),
//                 ),
//                 Text(
//                   city,
//                   style: TextStyle(
//                       fontSize: 22,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w500),
//                 )
//               ],
//             ),
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.end,
//               children: <Widget>[
//                 Text(
//                   hour,
//                   style: TextStyle(
//                       fontSize: 50,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w300),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(bottom: 5.0),
//                   child: Text(
//                     timeof,
//                     style: TextStyle(
//                         fontSize: 23,
//                         color: Colors.white,
//                         fontWeight: FontWeight.w400),
//                   ),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//       Divider(
//         color: Colors.white,
//         thickness: 0.3,
//       ),
//     ],
//   );
// }

// class MyAppThemes {
//   static ThemeData lightTheme() {
//     return ThemeData(
//         brightness: Brightness.light,
//         appBarTheme: AppBarTheme(
//             color: Colors.blueGrey,
//             iconTheme: IconThemeData(color: Colors.black, size: 25)),
//         iconTheme: IconThemeData(color: Colors.blueGrey, size: 20),
//         floatingActionButtonTheme: FloatingActionButtonThemeData(
//             backgroundColor: Colors.white, foregroundColor: Colors.black));
//   }

//   static ThemeData darkTheme() {
//     return ThemeData(
//         brightness: Brightness.dark,
//         appBarTheme: AppBarTheme(
//             color: Colors.black,
//             iconTheme: IconThemeData(
//                 color: Color.fromARGB(255, 180, 173, 173), size: 25)),
//         iconTheme:
//             IconThemeData(color: Color.fromARGB(255, 173, 188, 214), size: 20),
//         floatingActionButtonTheme: FloatingActionButtonThemeData(
//             backgroundColor: Colors.black, foregroundColor: Colors.white));
//   }
// }
