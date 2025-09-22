import 'package:flutter/material.dart';

import '../../../../../core/Utlis/Widgets/custom_button.dart';
class BookActions extends StatelessWidget {
  const BookActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomButton(
            textSize: 18,
            text: "19.99€",
            textColor: Colors.black,
            backgroundColor: Colors.white,
            borderRadius: BorderRadius.only(topLeft:Radius.circular(16),bottomLeft: Radius.circular(16)),
          ),
        ),
        Expanded(
          child: CustomButton(
            textSize: 16,
            text: "Free preview",
            textColor: Colors.white,
            backgroundColor: Color(0xffEF8262),
            borderRadius: BorderRadius.only(topRight:Radius.circular(16),bottomRight: Radius.circular(16)),
          ),
        ),
      ],
    );
  }
}