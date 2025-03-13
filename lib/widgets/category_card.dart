import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

import '../screens/category_screen.dart';

class CategoryCard extends StatelessWidget {

  CategoryModel category;
   CategoryCard({super.key, required this.category, });
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context){
              return CategoryScreen(categoryName: category.title);
              }
            )
        );
      },
      child: Container(
        margin: EdgeInsets.only(right: 12),
        width: 180,
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                category.image,
              ),
            ),
            borderRadius: BorderRadius.circular(16)
        ),
        child: Center(
          child: Text(
            category.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 18.0,
            ),
          ),
        ),
      ),
    );
  }
}
