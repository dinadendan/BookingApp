import 'package:booking_app/features/home/presentaion/Manager/SimilarBooksCubit/SimilarBooksCubit.dart';
import 'package:booking_app/features/home/presentaion/Manager/SimilarBooksCubit/SimilarBooksStates.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/AppRouter.dart';
import '../../../../../core/widgets/customErrorWidget.dart';
import '../../../../../core/widgets/customLoadingIndicator.dart';
import 'CustomBookImage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';


class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit,SimilarBooksState>(
      builder :(context,state) {
       if( state is SimilarBooksSuccess){
         return SizedBox(
           height: MediaQuery.of(context).size.height * .18,
           child: ListView.builder(
             itemCount: state.books.length,
             scrollDirection:Axis.horizontal,
             itemBuilder: (context,index) {
               return GestureDetector(
                 onTap: (){
                   GoRouter.of(context).push(AppRouter.kBookDetailsView,
                       extra: state.books[index]
                   );
                 },
                 child: CustomBookImage(
                   imageUrl: state.books[index].volumeInfo?.imageLinks
                       ?.thumbnail ?? '',

                 ),
               );
             }
         ),
         );
       }else if (state is SimilarBooksFailure) {
         return CustomErrorWidget(errMessage: state.errMessage);
       } else {
         return const CustomLoadingIndicator();
       }
      }

    );

  }
}