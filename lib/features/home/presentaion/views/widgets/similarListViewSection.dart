import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'SimilarBooksListView.dart';

class SimilarListViewSection extends StatelessWidget{
  const SimilarListViewSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like' ,
          style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.bold
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const SimilarBooksListView(),
      ],
    );
  }
}
