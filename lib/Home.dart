import 'package:flutter/material.dart';
import 'NewsPage.dart';
import "main.dart";

var index;
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Today News"),
        ),
        body: Center(
          child: ListView.builder(
            itemCount: item.length,
            itemBuilder: (BuildContext context, int position) {
              if (position.isOdd) return new Divider();
              index = position ~/ 2;
              return ListTile(
                title: new Text(
                  "${item[index]['title']}",
                  style: new TextStyle(
                      fontSize: 15.5,
                      color: Colors.orange,
                      fontWeight: FontWeight.w500),
                ),
                subtitle: new Text("${item[index]['author']}"),
                leading: new CircleAvatar(
                  child: Text("${index + 1}"),
                ),
                onTap: () {
               Navigator.pushReplacementNamed(
                  context, NewsPage.News,
                 );
               },
              );
            },
          ),
        ),
      ),
    );
  }
}
