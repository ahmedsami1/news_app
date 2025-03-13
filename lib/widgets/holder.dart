// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app/models/article_model.dart';
// import 'package:news_app/services/news_services.dart';
//
// import 'news_tile.dart';
//
// class NewsListView extends StatefulWidget {
//   const NewsListView({super.key});
//
//   @override
//   State<NewsListView> createState() => _NewsListViewState();
// }
//
// class _NewsListViewState extends State<NewsListView> {
//   List<ArticleModel> articles = [];
//   bool isLoading = true;
//   @override
//   void initState() {
//     super.initState();
//     getGeneralNews();
//   }
//
//   Future<void> getGeneralNews() async {
//     articles = await NewsService().getNews();
//     isLoading = false;
//     setState(() {
//
//     });
//   }
//   @override
//   Widget build(BuildContext context)  {
//     return isLoading? SliverFillRemaining(
//         hasScrollBody: false,
//         child: Center(
//           child: CircularProgressIndicator(
//             color: Colors.blue,
//           ),
//         )) : SliverList(
//       delegate: SliverChildBuilderDelegate(
//         childCount: articles.length,
//             (context, index) => NewsTile(article: articles[index],),
//       ),
//     );
//   }
// }
