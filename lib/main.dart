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


}





  //Question 2
// In this question first of all metgod Nmae can not be start from UppercAse Letter
// so we need to make it  LowerCase.

String mylongquestion(String counting){
  String counting = "";
   for(var i = 0 ; i <=10000; i++){
     counting;
   }
   return "$counting";

}


// Question 3:
var list1 = ['i','love','flutter'];
final list2 = list1;

// This Line will not Compile because we declare variable as final then
// we can not Reassign the Value. nad In the Third Line also const can not
// be changed so these statement are Wrong

// list2[2] = 'Dart';
// const list3 = list1;

