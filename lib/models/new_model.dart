class NewModel{
  List<dynamic> news;
  int totalResults;

  NewModel({required this.news, required this.totalResults});
  factory NewModel.getJson(Map<String, dynamic> json){
    return NewModel(news: json['articles'], totalResults: json['totalResults']);
  }
}