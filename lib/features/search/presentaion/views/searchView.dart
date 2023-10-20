import 'package:booking_app/features/search/presentaion/views/widgets/SearchViewBody.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget{
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SearchViewBody(),
      ),
    );
  }
}
