import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder:  buildOutlineInputBorder(),
        focusedBorder:  buildOutlineInputBorder(),
        hintText: 'Search ...',
        suffixIcon: IconButton(
          onPressed: (){},
          icon: const Opacity(
            opacity: .8,
            child:  Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 24,
            ),
          ),
        ),

      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() => OutlineInputBorder(
    borderSide: const BorderSide(
      color: Colors.white,
    ),
    borderRadius: BorderRadius.circular(12),
  );
}
