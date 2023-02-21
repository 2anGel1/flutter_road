// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// void main() {
//   runApp(DemoApp());
// }

// class DemoApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       initialRoute: '/',
//       routes: {
//         '/': (context) => FirstPage(),
//         '/second': (context) => SecondPage(),
//         '/third': (context) => ThirdPage()
//       },
//     );
//   }
// }

// class FirstPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("First Page"),
//         actions: <Widget>[
//           IconButton(
//               onPressed: () {
//                 Navigator.pushNamed(context, '/second');
//               },
//               icon: Icon(Icons.navigate_next))
//         ],
//       ),
//     );
//   }
// }

// class SecondPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Second Page"),
//         actions: <Widget>[
//           IconButton(
//               onPressed: () {
//                 Navigator.pushNamed(context, '/third');
//               },
//               icon: Icon(Icons.navigate_next))
//         ],
//       ),
//     );
//   }
// }

// class ThirdPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Third and last Page"),
//       ),
//     );
//   }
// }
