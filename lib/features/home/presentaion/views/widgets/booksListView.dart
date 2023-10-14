import 'package:flutter/material.dart';
import 'CustomBookImage.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection:Axis.horizontal,
        itemBuilder: (context,index){
          return const CustomBookImage();
        },

      ),
    );
  }
}