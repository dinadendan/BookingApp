import 'package:booking_app/core/utils/AppRouter.dart';
import 'package:booking_app/features/home/presentaion/views/widgets/CustomBookImage.dart';
import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/BookModel.dart';
import 'BookingRating.dart';
import 'package:go_router/go_router.dart';


class NewestBooksListViewItem extends StatelessWidget {
  const NewestBooksListViewItem({Key? key, required this.bookModel}) : super(key: key);

  final BookModel bookModel ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kBookDetailsView,
        extra: bookModel
        );
      },
      child: SizedBox(
        height: 150,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
             CustomBookImage(
                 imageUrl:bookModel.volumeInfo?.imageLinks?.thumbnail ?? '',
             ),
              const SizedBox(
                width: 17,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    SizedBox(
                      width: MediaQuery.of(context).size.width *.5 ,
                      child: Text(
                        bookModel.volumeInfo?.title ?? '',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.textStyle20.copyWith(
                          fontFamily: kGtSectraFine,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                     Text(
                      bookModel.volumeInfo?.authors![0] ?? '',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle14,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children:  [
                        Text(
                          'Free ',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Styles.textStyle20.copyWith(
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        const Spacer(),
                         BookRating(
                          rating: bookModel.volumeInfo?.averageRating ?? 0,
                           count: bookModel.volumeInfo?.ratingsCount ?? 0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }
}



