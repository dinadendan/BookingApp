import 'package:booking_app/features/home/presentaion/Manager/NewestBooksCubit/NewestBooksCubit.dart';
import 'package:booking_app/features/home/presentaion/Manager/NewestBooksCubit/NewestBooksStates.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/customErrorWidget.dart';
import '../../../../../core/widgets/customLoadingIndicator.dart';
import 'BestSellerListViewItem.dart';

class BestSellerListView extends StatelessWidget{
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit,NewestBooksState>(
      builder: (context,state){
        if(state is NewestBookSuccess){
          return  ListView.builder(

            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index ) => const BestSellerListViewItem(),
          );
        } else if(state is NewestBookFailure){
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
