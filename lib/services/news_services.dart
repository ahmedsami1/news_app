import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService{

  Dio dio = Dio();

  Future<List<ArticleModel>> getNews({required String categoryName})async{
    try{
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&category=$categoryName&apiKey=ac9d86635f6e4ef2ae1c8114739c7cb4');

      Map<String,dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articlesList = [];

      for(var article in articles){
        ArticleModel articleModel = ArticleModel(
          image: article['urlToImage'] ?? '',
          title: article['title']??'',
          subTitle: article['description']??'',
          url: article['url']??'',

        );
        articlesList.add(articleModel);

      }
      return articlesList;
  }catch(e){
      return [];
     }
  }
}

