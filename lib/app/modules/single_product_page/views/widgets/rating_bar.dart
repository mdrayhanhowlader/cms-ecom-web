import 'package:cmsecommerce/app/modules/single_product_page/controllers/single_product_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class RatingBarWithText extends GetView<SingleProductPageController> {
  final double rating;
  final Color fillColor;
  final String reviewsText;

  RatingBarWithText({
    required this.rating,
    required this.fillColor,
    required this.reviewsText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RatingBar.builder(
          initialRating: rating,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemSize: 16,
          itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => Icon(
            Icons.star,
            color: fillColor,
          ),
          onRatingUpdate: (rating) {
            // Perform actions on rating update if needed
          },
        ),
        const SizedBox(width: 8),
        Text(
          reviewsText,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
