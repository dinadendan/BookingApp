import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/BookModel.dart';
import 'BookingRating.dart';
import 'BooksAction.dart';
import 'CustomBookImage.dart';

class BooksDetails extends StatelessWidget {
  const BooksDetails({Key? key, required this.bookModel}) : super(key: key);

  final BookModel bookModel ;


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .19),
          child: CustomBookImage(
            imageUrl:bookModel.volumeInfo?.imageLinks?.thumbnail ?? '',
          ),

        ),
         Text(
          bookModel.volumeInfo?.title ?? '',
          style: Styles.textStyle30 ,),
        const SizedBox(
          height: 5,
        ),
         Opacity(
          opacity: .7,
          child: Text(
            bookModel.volumeInfo?.authors![0] ?? '',
            style: Styles.textStyle20,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
         BookRating(
          rating: bookModel.volumeInfo?.averageRating ?? 0,
          count: bookModel.volumeInfo?.ratingsCount ?? 0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 20,
        ),
         BooksAction(
           bookModel: bookModel,

         ),
      ],
    );
  }
}
