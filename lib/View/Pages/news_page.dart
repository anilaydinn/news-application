import 'package:flutter/material.dart';
import 'package:news_application/View/Widgets/custom_news_tile.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      home: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Text(
                    "NEWS",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        border:
                            Border.all(color: Colors.grey.shade700, width: 1)),
                    child: CustomNewsTile()),
              ],
            ),
          ),
          appBar: AppBar(
            title: Text("AA NEWS"),
          ),
        ),
      ),
    );
  }
}
