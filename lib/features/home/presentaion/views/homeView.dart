import 'package:booking_app/features/home/presentaion/views/widgets/homeViewBody.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget{
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeViewBody(),
    );
  }
}
