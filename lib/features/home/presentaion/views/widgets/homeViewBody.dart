import 'package:booking_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'BestSellerListViewItem.dart';
import 'booksListView.dart';
import 'customeAppBar.dart';

class HomeViewBody extends StatelessWidget{
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:const [
          CustomAppBar(),
          BooksListView(),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Best Seller' ,
              style: Styles.textStyle28,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}






