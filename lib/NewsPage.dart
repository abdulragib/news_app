import 'package:flutter/material.dart';
import "main.dart";

class NewsPage extends StatelessWidget {
  int index;
  NewsPage(this.index, {value});

  // static const String News = '/NewsPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text(
          "News No : ${index + 1}",
          style: new TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Text("${item[index]['content']}"),
        ),
      ),
    );
  }
}
