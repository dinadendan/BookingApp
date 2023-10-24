import 'package:flutter/material.dart';
import '../../../../../core/utils/functions/lanuchUrl.dart';
import '../../../../../core/widgets/CustomButton.dart';
import '../../../data/models/BookModel.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({Key? key, required this.bookModel}) : super(key: key);

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal : 8),
      child: Row(
        children:  [
          const Expanded(
              child: CustomButton(
                text: 'Free',
                backGroundColor: Colors.white,
                textColor: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
              ),
          ),
          Expanded(
              child: CustomButton(
                text: getText(bookModel),
                onPressed: (){
                  launchCustomUr(context, bookModel.volumeInfo?.previewLink);
                },
                backGroundColor: const Color(0xffEF8262),
                textColor: Colors.white,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
          ),
        ],
      ),
    );
  }
  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo?.previewLink == null) {
      return 'Not Available';
    } else {
      return 'Preview';
    }
  }
}
