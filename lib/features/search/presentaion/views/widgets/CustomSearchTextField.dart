import 'package:booking_app/features/search/presentaion/Manager/searchCubit/searchCubit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Manager/searchCubit/searchStates.dart';

class CustomSearchTextField extends StatelessWidget {
   const CustomSearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit,SearchBooksState>(
      builder: (context ,state){
        SearchBooksCubit cubit = BlocProvider.of(context);
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: TextField(
            autofocus: true,
            enableSuggestions: true,
            cursorHeight: 25,
            keyboardType: TextInputType.text,
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
            onChanged: (value){
              cubit.fetchSearchBooks(category: value);
            },
          ),
        );
      }
    );
  }

  OutlineInputBorder buildOutlineInputBorder() => OutlineInputBorder(
    borderSide: const BorderSide(
      color: Colors.white,
    ),
    borderRadius: BorderRadius.circular(12),
  );
}
