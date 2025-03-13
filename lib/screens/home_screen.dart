import 'package:flutter/material.dart';
import '../constants.dart';
import '../widgets/category_list_view.dart';
import '../widgets/news_list_view_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
                'News',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
                'Cloud',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                color: Colors.orange
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body:Padding(
        padding:  EdgeInsets.all(16.0),
        child:
          CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: CategoryListView(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              NewsListViewBuilder(
                categoryName: 'general',
              ),
            ],
          ),
      ),
    );
  }
}


