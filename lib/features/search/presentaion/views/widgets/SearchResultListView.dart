
import 'package:booking_app/features/search/presentaion/Manager/searchCubit/searchStates.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../../../core/widgets/customErrorWidget.dart';
import '../../../../home/presentaion/views/widgets/NewestBooksListViewItem.dart';
import '../../Manager/searchCubit/searchCubit.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit ,SearchBooksState>(
      builder : (context , state ){
        if(state is SearchBooksSuccess){
          return ListView.separated(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsetsDirectional.only(top: 18),
            itemBuilder: (context, index) => SizedBox(
                child: NewestBooksListViewItem(
                  bookModel: state.books[index],
                )
            ),
            separatorBuilder: (context, index) => const SizedBox(
              height: 20,
            ),
            itemCount: state.books.length,
          );
        }else if (state is SearchBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const Center(
              child: Text('No data here to show '));
        }
      }
    );
  }
}