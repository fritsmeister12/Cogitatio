import 'package:flutter/material.dart';
import 'quote.dart';

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
  List<Quote> quotes = [
    Quote(
        author: 'Oscar Wilde',
        difficulty: 'light',
        recommended: '1 - 3',
        text: 'Be yourself; everyone else is already taken'),
    Quote(
        author: 'Oscar Wilde',
        difficulty: 'light',
        recommended: '1 - 3',
        text: 'I have nothing to declare except my genius'),
    Quote(
        author: 'Oscar Wilde',
        difficulty: 'medium',
        recommended: '1 - 3',
        text: 'I have sowieso niks te doen to declare except my genius'),
    Quote(
        author: 'Oscar Wilde',
        difficulty: 'medium',
        recommended: '1 - 3',
        text: 'I have nothing to declare except my genius'),
    Quote(
        author: 'Oscar Wilde',
        difficulty: 'heavy',
        recommended: '1 - 5',
        text: 'The truth is rarely pure and never simple')
  ];

  Widget playlistTemplate(quote) {
    return Card(
        color: Color.fromRGBO(39, 41, 66, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child: InkWell(
          onTap: () {
            print("Tapped a Container");
          },
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  "recovery".toUpperCase(),
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 4.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[500],
                  ),
                ),
                SizedBox(height: 12.0),
                Text(
                  quote.text,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 12.0),
                Text(
                  "recommended: " + quote.recommended + " minutes",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 12.0),
                Text(
                  "difficulty: " + quote.difficulty,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      backgroundColor: Color.fromRGBO(32, 34, 54, 1),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            icon: Icon(Icons.logout),
            onPressed: () {},
          )
        ],
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Cogitatio',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: quotes.map((quote) => playlistTemplate(quote)).toList(),
        ),
      ),
    );
  }
}
