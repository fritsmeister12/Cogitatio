import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[800],
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Cogitatio'),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
