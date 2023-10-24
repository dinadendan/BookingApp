import 'package:booking_app/features/home/presentaion/Manager/FeaturedBooksCubit/FeaturedBooksCubit.dart';
import 'package:booking_app/features/home/presentaion/Manager/FeaturedBooksCubit/FeaturedBooksStates.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/AppRouter.dart';
import '../../../../../core/widgets/customErrorWidget.dart';
import '../../../../../core/widgets/customLoadingIndicator.dart';
import 'CustomBookImage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:go_router/go_router.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit,FeaturedBooksState>(
      builder : (context,state){
      if (state is FeaturedBooksSuccess ){
        return  SizedBox(
          height: MediaQuery.of(context).size.height * .28,
          child: ListView.builder(
              itemCount: state.books.length,
            scrollDirection:Axis.horizontal,
            itemBuilder: (context,index){
              return GestureDetector(
                onTap: (){
                  GoRouter.of(context).push(AppRouter.kBookDetailsView,
                      extra: state.books[index]
                  );
                },
                child: CustomBookImage(
                  imageUrl: state.books[index].volumeInfo?.imageLinks?.thumbnail ?? '',
                ),
              );
            },
          ),
        );
      } else if (state is FeaturedBooksFailure){
        return CustomErrorWidget(errMessage: state.errMessage);
      } else {
        return const CustomLoadingIndicator();
      }
      }
    );
  }
}
