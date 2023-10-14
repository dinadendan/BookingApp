import 'package:flutter/material.dart';

import 'BestSellerListViewItem.dart';

class BestSellerListView extends StatelessWidget{
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index ) => const BestSellerListViewItem(),
    );
  }
}
