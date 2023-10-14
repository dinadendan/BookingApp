import 'package:booking_app/features/home/presentaion/views/widgets/BookDetailsViewBody.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget{
  const BookDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: BookDetailsViewBody()
      ),
    );
  }
}
