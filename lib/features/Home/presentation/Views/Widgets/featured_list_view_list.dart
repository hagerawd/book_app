import 'package:flutter/material.dart';

import 'custom_book_image.dart';
class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height *.23,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.only(right: 8),
              child: CustomBookImage(),
            );
          }),
    );
  }
}