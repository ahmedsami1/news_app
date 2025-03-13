import 'package:flutter/material.dart';
import '../models/category_model.dart';
import 'category_card.dart';

class CategoryListView extends StatelessWidget {
   const CategoryListView({super.key});
  final List<CategoryModel> categories = const
  [
    CategoryModel(image: 'assets/sport.jpg', title: 'Sports'),
    CategoryModel(image: 'assets/entertainment.jpg', title: 'Entertainment'),
    CategoryModel(image: 'assets/business.jpg', title: 'Business'),
    CategoryModel(image: 'assets/health.avif', title: 'Health'),
    CategoryModel(image: 'assets/science.avif', title: 'Science'),
    CategoryModel(image: 'assets/technology.jpeg', title: 'Technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => CategoryCard(
          category: categories[index],
        ),
        itemCount: categories.length,
      ),
    );
  }
}
