import 'package:flutter/material.dart';
import 'package:booking_app/core/utils/assets.dart';


class CustomItemList extends StatelessWidget {
  const CustomItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7/4,
      child: Container(
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image:  const DecorationImage(
            fit: BoxFit.fill,
            image:AssetImage(
              AssetsData.book1,
            ),
          ),
        ),
      ),
    );
  }
}
