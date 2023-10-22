import 'package:flutter/material.dart';
import 'CustomBookImage.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .18,
      child: ListView.builder(
        scrollDirection:Axis.horizontal,
        itemBuilder: (context,index){
          return  CustomBookImage(
            imageUrl: 'http://books.google.com/books/content?id=9GwrmHRl490C&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api',
          );
        },

      ),
    );

  }
}