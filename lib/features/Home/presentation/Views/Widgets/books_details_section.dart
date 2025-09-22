import 'package:flutter/material.dart';
import '../../../../../core/Utlis/Styles.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_image.dart';
class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal:  width*.18),
          child: CustomBookImage(),
        ),
        SizedBox(height: 43,),
        Text("The Jungle Book",style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold
        ),),
        SizedBox(height: 6,),
        Opacity(
          opacity: .7,
          child: Text("Rudyard Kipling",style: Styles.textStyle18.copyWith(
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
          ),),
        ),
        SizedBox(height: 15,),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: BookActions(),
        ),
      ],
    );
  }
}
