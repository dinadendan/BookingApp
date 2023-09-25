import 'package:flutter/material.dart';
import 'CustomItemList.dart';
import 'customeAppBar.dart';

class HomeViewBody extends StatelessWidget{
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const[
        CustomAppBar(),
        BooksListView(),
      ],
    );
  }
}

class BooksListView extends StatelessWidget {
  const BooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.builder(
          scrollDirection:Axis.horizontal,
          itemBuilder: (context,index){
            return const CustomItemList();
          },

        ),
      ),
    );
  }
}




