import 'package:booking_app/core/utils/AppRouter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 30),
      child: Row(
        children: [
          Image.asset(AssetsData.logo,
            height: 30,
          ),
          const Spacer(),
          IconButton(
            onPressed: (){
              GoRouter.of(context).push(AppRouter.kSearchView);
            },
            icon:const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 24,
            ),
          ),

        ],
      ),
    );
  }
}
