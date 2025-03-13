import 'package:flutter/material.dart';
import 'package:news_app/screens/news.details.dart';

import '../models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.article});
  final ArticleModel article;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context){
              return NewsDetails(article: article,);
            }
            )
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 26.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(
                article.image,
                errorBuilder: (context, error, stackTrace) {
                  return Image.asset('assets/sport.jpg');
                },
                height: 180,
                width: double.infinity,
                fit: BoxFit.cover,
              ) ,
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              article.title,
              maxLines: 2,
              style: TextStyle(
                overflow: TextOverflow.ellipsis,
                fontSize: 19,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              article.subTitle,
              maxLines: 2,
              style: TextStyle(
                overflow: TextOverflow.ellipsis,
                color: Colors.grey[500],
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
