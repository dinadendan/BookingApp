import 'package:flutter/material.dart';

class CustomDetailsAppBar extends StatelessWidget {
  const CustomDetailsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: (){},
          icon: const Icon(Icons.close),
        ),
        IconButton(
          onPressed: (){},
          icon: Icon(Icons.shopping_cart_outlined),
        ),
      ],
    );
  }
}
