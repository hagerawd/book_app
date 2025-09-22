import 'package:flutter/material.dart';

import '../../../../Home/presentation/Views/Widgets/best_seller_list_view_item.dart';
class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context,index)
        {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: BestSellerListViewItem(),
          );
        });
  }
}