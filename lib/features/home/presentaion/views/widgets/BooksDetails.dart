import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'BookingRating.dart';
import 'BooksAction.dart';
import 'CustomBookImage.dart';

class BooksDetails extends StatelessWidget {
  const BooksDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .19),
          child:  CustomBookImage(
            imageUrl: 'http://books.google.com/books/content?id=9GwrmHRl490C&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api',
          ),
        ),
        const Text(
          'The Jungle Book ' ,
          style: Styles.textStyle30 ,),
        const SizedBox(
          height: 5,
        ),
        const Opacity(
          opacity: .7,
          child: Text('Rudyard Kipling',
            style: Styles.textStyle20,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 20,
        ),
        const BooksAction(),
      ],
    );
  }
}
