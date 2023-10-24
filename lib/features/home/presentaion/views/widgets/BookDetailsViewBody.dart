import 'package:booking_app/features/home/data/models/BookModel.dart';
import 'package:booking_app/features/home/presentaion/views/widgets/similarListViewSection.dart';
import 'package:flutter/material.dart';

import 'BooksDetails.dart';
import 'CustomDetailsAppBar.dart';


class BookDetailsViewBody extends StatelessWidget{
  const BookDetailsViewBody({Key? key, required this.bookModel}) : super(key: key);

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const CustomDetailsAppBar(),
                BooksDetails(
                  bookModel: bookModel,
                ),
                const Expanded(
                  child: SizedBox(
                    height: 10,
                  ),
                ),
                const SimilarListViewSection(),
              ],
            ),
          ),
        ),
      ],
    );

  }
}









