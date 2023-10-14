import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomButton extends StatelessWidget{
  const CustomButton({Key? key,
    required this.backGroundColor,
    required this.textColor,
    this.borderRadius,
    required this.text,
  }) : super(key: key);

  final String text;
  final Color backGroundColor ;
  final Color textColor ;
  final BorderRadius ? borderRadius ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: (){},
          style: TextButton.styleFrom(
            backgroundColor: backGroundColor,
            shape: RoundedRectangleBorder(
              borderRadius:borderRadius ?? BorderRadius.circular(12),
            ),
          ),
          child: Text(
            text,
            style: Styles.textStyle18.copyWith(
              color: textColor,
              fontWeight: FontWeight.bold
            ),
          )
      ),
    );
  }
}
