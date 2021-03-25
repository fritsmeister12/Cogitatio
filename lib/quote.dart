import 'package:flutter/material.dart';

class Quote {
  String text;
  String author;
  String difficulty;
  String recommended;
  String category;
  String description;
  Color color;

  //  normal constructor, as we've already seen

  //  Quote(String author, String text){
  //    this.text = text;
  //    this.author = author;
  //  }

  //  constructor with named parameters

  //  Quote({ String author, String text }){
  //    this.text = text;
  //    this.author = author;
  //  }

  // constructor with named parameters
  // & automatically assigns named arguments to class properties

  Quote(
      {required this.text,
      required this.category,
      required this.author,
      required this.description,
      required this.difficulty,
      required this.color,
      required this.recommended});
}
