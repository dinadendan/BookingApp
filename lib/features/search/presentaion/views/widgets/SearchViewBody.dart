import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../home/presentaion/views/widgets/CustomDetailsAppBar.dart';
import 'CustomSearchTextField.dart';
import 'SearchResultListView.dart';

class SearchViewBody extends StatelessWidget{
  const SearchViewBody({Key? key }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10 , vertical:20 ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:const [
              CustomDetailsAppBar(),
              CustomSearchTextField(),
              SizedBox(
                height: 20,
              ),
              Text(
                'Search Result',
                style: Styles.textStyle20,
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(
                  child: SearchResultListView (),
              ),
            ],
          ),
        ),
      ),

    );
  }
}



