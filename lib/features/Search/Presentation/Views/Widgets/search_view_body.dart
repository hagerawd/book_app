import 'package:book_app/features/Search/Presentation/Views/Widgets/custom_search_text_field.dart';
import 'package:book_app/features/Search/Presentation/Views/Widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/Utlis/Styles.dart';
import '../../../../Home/presentation/Views/Widgets/best_seller_list_view_item.dart';
class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                CustomSearchTextField(),
                SizedBox(height: 16,),
                Text("Search Result", style: Styles.textStyle18,),
                SizedBox(height: 16,),
              ],
            ),
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: SearchResultListView(),
          ),
        )
      ],
    );
  }
}

