import 'package:flutter/material.dart';
import 'package:flutter_scoped_state_managment/list_view_main.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Scoped State Counter',
      theme: new ThemeData(
        primarySwatch: Colors.orange,
      ),
      //  We will extract the below to a seperate file
      home: ListViewMain(),
    );
  }
}

