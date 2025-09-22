import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import '../../../../../core/Utlis/Assets.dart';
import '../../../../../core/Utlis/Styles.dart';
import 'Home_view_body.dart';
import 'book_rating.dart';
class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push("/bookDetailsView");
      },
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5/4,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(AssetsData.test))
                ),
              ),
            ),
            SizedBox(width: 30,),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width*.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Harry Potter and the Coble of Fore",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),
                    ),
                    SizedBox(height: 3,),
                    Text("J.K.Rowling",
                      style: Styles.textStyle16,
                    ),SizedBox(height: 3,),
                    Row(
                      children: [
                        Text("19.99€",
                          style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        BookRating()
                      ],
                    )
                  ],),
              ),
            )

          ],
        ),
      ),
    );
  }
}

