import 'package:flutter/material.dart';
import "main.dart";
import "Home.dart";


class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);
  static const String News ='/NewsPage';

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new Text(
            "News No : $index",
            style: new TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Expanded(
              child: Text("${item[index]['content']}"),
            ),
          ),
        ));
  }
}
