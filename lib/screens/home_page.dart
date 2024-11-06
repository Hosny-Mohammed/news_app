import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/providers/new_provider.dart';
import 'package:news_app/widgets/new_card.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<NewProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("New"),
        centerTitle: true,
      ),
      body: Consumer<NewProvider>(builder: (context, value, Widget? child) {
        var news = value.news?.news;
        if (news == null) {
          provider.getData();
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.separated(
              itemBuilder: (context, index) => NewCard(
                  img: news[index]['urlToImage'],
                  title: news[index]['title'],
                  description: news[index]['description']),
              separatorBuilder: (context, index) => SizedBox(
                    height: 20,
                  ),
              itemCount: news.length);
        }
      }),
    );
  }
}
