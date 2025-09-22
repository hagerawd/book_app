import 'package:book_app/features/Home/presentation/Views/Widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/Utlis/Styles.dart';

class SimilarListViewSection extends StatelessWidget {
  const SimilarListViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("You Can also like ",style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.w700
        ),),
        SizedBox(height: 15,),
        SimilarBooksListView(),
      ],
    );
  }
}
