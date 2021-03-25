import 'package:flutter/material.dart';
import 'quote.dart';
import 'package:google_fonts/google_fonts.dart';

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
        category: 'recovery',
        author: 'Oscar Wilde',
        difficulty: 'light',
        recommended: '1 - 3',
        color: Color.fromRGBO(72, 63, 94, 1),
        description:
            'Simple and effective way to help regain calm and control fo your thoughts when under stress',
        text: 'Be yourself; everyone else is already taken'),
    Quote(
        category: 'relaxation',
        author: 'Oscar Wilde',
        difficulty: 'light',
        recommended: '1 - 3',
        color: Color.fromRGBO(70, 61, 64, 1),
        description:
            'Simple and effective way to help regain calm and control fo your thoughts when under stress',
        text: 'I have nothing to declare except my genius'),
    Quote(
        category: 'relaxation',
        author: 'Oscar Wilde',
        difficulty: 'medium',
        recommended: '1 - 3',
        color: Color.fromRGBO(85, 83, 105, 1),
        description:
            'Simple and effective way to help regain calm and control fo your thoughts when under stress',
        text: 'I have sowieso niks te doen to declare except my genius'),
    Quote(
        category: 'relaxation',
        author: 'Oscar Wilde',
        difficulty: 'medium',
        recommended: '1 - 3',
        color: Color.fromRGBO(104, 79, 109, 1),
        description:
            'Simple and effective way to help regain calm and control fo your thoughts when under stress',
        text: 'I have nothing to declare except my genius'),
    Quote(
        category: 'relaxation',
        author: 'Oscar Wilde',
        difficulty: 'heavy',
        recommended: '1 - 5',
        color: Color.fromRGBO(107, 105, 145, 1),
        description:
            'Simple and effective way to help regain calm and control fo your thoughts when under stress',
        text: 'The truth is rarely pure and never simple')
  ];

  Widget playlistTemplate(quote) {
    return Card(
      color: quote.color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: InkWell(
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        // highlightColor: Colors.transparent,
        // splashColor: Colors.transparent,
        onTap: () {
          print("Tapped a Container");
        },
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(36.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    quote.category.toUpperCase(),
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
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(39, 41, 66, 1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                ),
              ),
              padding: EdgeInsets.fromLTRB(36.0, 24.0, 36.0, 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Flexible(
                    child: Text(
                      quote.description,
                      // overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        // fontSize: 16.0,
                        color: Colors.grey[500],
                      ),
                    ),
                  ),
                  SizedBox(height: 12.0),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.grey[500],
                    size: 38.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
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
          style: GoogleFonts.ptSerif(
              fontWeight: FontWeight.bold, letterSpacing: 2.0),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 120.0),
        child: Column(
          children: quotes.map((quote) => playlistTemplate(quote)).toList(),
        ),
      ),
    );
  }
}
