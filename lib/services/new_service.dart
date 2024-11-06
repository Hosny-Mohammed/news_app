import 'package:dio/dio.dart';
import 'package:news_app/models/new_model.dart';

class NewServices{
  static Dio dio = Dio();
  
  static Future<NewModel> fetchData() async{
    Response response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=a410b1724f84452c8df8a810efe34642');
    if(response.statusCode == 200){
      return NewModel.getJson(response.data);
    }else{
      throw Exception("Error: couldn't fetch data");
    }
  }
}