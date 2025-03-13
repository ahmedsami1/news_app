import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'news_tile.dart';

class NewsListView extends StatelessWidget {
   const NewsListView({super.key, required this.articles});

   final List<ArticleModel> articles;
  @override
  Widget build(BuildContext context)  {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
            (context, index) => NewsTile(article: articles[index],),
      ),
    );

  }
}
