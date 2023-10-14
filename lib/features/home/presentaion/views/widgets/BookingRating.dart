import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';


class BookRating extends StatelessWidget {
  const BookRating({Key? key,
    this.mainAxisAlignment = MainAxisAlignment.start}) : super(key: key,);

  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children:const [
         Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
         SizedBox(
          width: 10,
        ),
         Text(
          '4.8',
          style: Styles.textStyle16,
        ),
         SizedBox(
          width: 5,
        ),
         Opacity(
           opacity: .5,
           child: Text(
            '(2390)',
            style: Styles.textStyle14),
         ),
      ],
    );
  }
}

