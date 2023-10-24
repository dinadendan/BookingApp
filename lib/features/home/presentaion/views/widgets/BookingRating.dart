import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';


class BookRating extends StatelessWidget {
  const BookRating({Key? key,
    this.mainAxisAlignment = MainAxisAlignment.start, required this.rating, required this.count}) : super(key: key,);

  final num rating;
  final int count;

  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
         const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
         const SizedBox(
          width: 10,
        ),
         Text(
         rating.toString(),
          style: Styles.textStyle16,
        ),
         const SizedBox(
          width: 5,
        ),
          Opacity(
           opacity: .5,
           child: Text(
            count.toString(),
            style: Styles.textStyle14),
         ),
      ],
    );
  }
}

