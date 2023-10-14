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
          return const CustomBookImage();
        },

      ),
    );

  }
}