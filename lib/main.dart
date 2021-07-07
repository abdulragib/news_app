import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import "Home.dart";

var data;
List item = data['articles'];
void main() async {
  data = await getNews();
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Today News",
      home: Home(),
      theme: new ThemeData(primarySwatch: Colors.green),
    );
  }
}

Future getNews() async {
  String url =
      "https://newsapi.org/v2/everything?q=apple&from=2021-07-03&to=2021-07-03&sortBy=popularity&apiKey=f88eb92f431a4ec9aedf81b26234cf79";
  http.Response response = await http.get(Uri.parse(url));
  return json.decode(response.body);
}
