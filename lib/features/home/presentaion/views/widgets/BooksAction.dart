import 'package:flutter/material.dart';
import '../../../../../core/widgets/CustomButton.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal : 8),
      child: Row(
        children: const [
          Expanded(
              child: CustomButton(
                text: '19.99€',
                backGroundColor: Colors.white,
                textColor: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
              )),
          Expanded(
              child: CustomButton(
                text: 'Free preview',
                backGroundColor: Color(0xffEF8262),
                textColor: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              )),

        ],
      ),
    );
  }
}
