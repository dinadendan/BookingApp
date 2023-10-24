import 'package:booking_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'NewestBooksListView.dart';
import 'booksListView.dart';
import 'customeAppBar.dart';

class HomeViewBody extends StatelessWidget{
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: CustomAppBar(),
              ),
              BooksListView(),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Newest Books' ,
                  style: Styles.textStyle26,
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: NewestBooksListView(),
          ),
        ),
      ],
    );

  }
}








