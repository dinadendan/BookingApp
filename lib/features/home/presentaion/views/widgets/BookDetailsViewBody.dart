import 'package:booking_app/features/home/presentaion/views/widgets/similarListViewSection.dart';
import 'package:flutter/material.dart';
import 'BooksDetails.dart';
import 'CustomDetailsAppBar.dart';


class BookDetailsViewBody extends StatelessWidget{
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: const[
                CustomDetailsAppBar(),
                BooksDetails(),
                Expanded(
                  child:  SizedBox(
                    height: 30,
                  ),
                ),
                SimilarListViewSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}









