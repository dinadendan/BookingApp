import 'package:booking_app/core/utils/AppRouter.dart';
import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import 'BookingRating.dart';
import 'package:go_router/go_router.dart';


class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: SizedBox(
        height: 180,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5/4,
              child: Container(
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image:  const DecorationImage(
                    fit: BoxFit.fill,
                    image:AssetImage(
                      AssetsData.book1,
                    ),
                  ),
                ),
              ),
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
                      'Harry Potter and the Goblet of Fire ',
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
                  const Text(
                    'J.K. Rowling',
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
                        '19.99 €',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.textStyle20.copyWith(
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      const Spacer(),
                      const BookRating(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}



