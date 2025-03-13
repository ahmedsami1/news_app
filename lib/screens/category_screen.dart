import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

import '../constants.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key, required this.categoryName});
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          categoryName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
      ),),),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomScrollView(
              slivers: [
                  NewsListViewBuilder(
                    categoryName: categoryName,
                  ),
              ],
            ),
          )
      ),
    );
  }
}
