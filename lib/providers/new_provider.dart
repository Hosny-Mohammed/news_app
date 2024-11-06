import 'package:flutter/material.dart';
import 'package:news_app/models/new_model.dart';
import '../services/new_service.dart';

class NewProvider extends ChangeNotifier{
  NewModel? news;
  //int? totalNews;
  Future<void> getData() async {
    news = await NewServices.fetchData();
    //totalNews = news?.totalResults;
    notifyListeners();
  }
}