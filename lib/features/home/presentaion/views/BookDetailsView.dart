import 'package:booking_app/features/home/presentaion/views/widgets/BookDetailsViewBody.dart';
import 'package:flutter/material.dart';

import '../../data/models/BookModel.dart';
import '../Manager/SimilarBooksCubit/SimilarBooksCubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget{
  const BookDetailsView({Key? key, required this.bookModel}) : super(key: key);

  final BookModel bookModel;

  @override

  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {

  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
        category: widget.bookModel.volumeInfo?.categories?[0] ?? '');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
          child: BookDetailsViewBody(
            bookModel: widget.bookModel,
          )
      ),
    );
  }
}
