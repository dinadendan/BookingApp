import 'package:booking_app/features/home/presentaion/views/widgets/BestSellerListViewItem.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'CustomSearchTextField.dart';

class SearchViewBody extends StatelessWidget{
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10 , vertical:20 ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:const [
              CustomSearchTextField(),
              SizedBox(
                height: 20,
              ),
              Text(
                'Search Result',
                style: Styles.textStyle18,
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(
                  child: SearchResultListView ()),
            ],
          ),
        ),
      ),

    );
  }
}


class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child:BestSellerListViewItem(),
        );
      },
    );
  }
}

