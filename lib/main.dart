import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "json",
      home: Home(),
      // ElevatedButton(child: Text("click"),
      // onPressed: getNews,)
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  void getNews() async {
    String url =
        "https://newsapi.org/v2/everything?q=apple&from=2021-07-03&to=2021-07-03&sortBy=popularity&apiKey=f88eb92f431a4ec9aedf81b26234cf79";
    http.Response response = await http.get(Uri.parse(url));
    print(response.statusCode);
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text("hello"),
        ),
        body: Center(
          child: ElevatedButton(child: Text("click"), onPressed: getNews),
        ),
      ),
    );
  }
}
