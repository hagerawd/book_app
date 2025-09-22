import 'package:book_app/core/Utlis/Styles.dart';
import 'package:book_app/core/Utlis/Widgets/custom_button.dart';
import 'package:book_app/features/Home/presentation/Views/Widgets/book_rating.dart';
import 'package:book_app/features/Home/presentation/Views/Widgets/custom_book_image.dart';
import 'package:book_app/features/Home/presentation/Views/Widgets/similar_books_list_view.dart';
import 'package:book_app/features/Home/presentation/Views/Widgets/similar_list_view_section.dart';
import 'package:flutter/material.dart';

import 'books_action.dart';
import 'books_details_section.dart';
import 'custom_book_details_app_bar.dart';
class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child:Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
               BooksDetailsSection(),
                Expanded(child: SizedBox(height: 40,)),
                SimilarListViewSection(),
                SizedBox(height: 40,)
              ],
            ),
          ) ,
        )
      ],
    );
  }
}
