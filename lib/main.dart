import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Material(
      child: Wrap(
        children: _generateChildren(7))
      );

  }

  List<Widget> _generateChildren(int count) {
    List<Widget> items = [];

    for (int i = 0; i < count; i++) {
      items.add(_generateItem(90, 75));
    }
    return items;
  }



  Widget _generateItem(double width, double height) {
    return  Padding(
      padding:  EdgeInsets.all(8.0),
      child: Chip(
        labelPadding: EdgeInsets.all(5.0),
        label: Text(
          "Flutter",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
        elevation: 6.0,
        shadowColor: Colors.grey[60],
        padding: EdgeInsets.all(8.0),
      ),
    );
  }

  // Widget _buildChip(String label, Color color) {
  //   return Chip(
  //     labelPadding: EdgeInsets.all(2.0),
  //     avatar: CircleAvatar(
  //       backgroundColor: Colors.white70,
  //       child: Text(label[0].toUpperCase()),
  //     ),
  //     label: Text(
  //       label,
  //       style: TextStyle(
  //         color: Colors.white,
  //       ),
  //     ),
  //     backgroundColor: color,
  //     elevation: 6.0,
  //     shadowColor: Colors.grey[60],
  //     padding: EdgeInsets.all(8.0),
  //   );
  // }

}

