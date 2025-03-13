import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import '../services/news_services.dart';
import 'news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key,required this.categoryName});
  final String categoryName;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsService().getNews(categoryName: widget.categoryName);
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot){
          if (snapshot.hasData) {
            return NewsListView(articles: snapshot.data!);
          }else if (snapshot.hasError){
            return SliverFillRemaining(
                  child: Text('oops there was an error')
            );
          }else{
            return SliverFillRemaining(
                hasScrollBody: false,
                child: Center(
                    child: CircularProgressIndicator(
                      color: Colors.orange,
                    )),
            );
          }
        }
    );
  }
}