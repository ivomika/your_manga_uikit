import 'package:flutter/material.dart';
import 'package:your_manga_uikit/atoms/theme/interface_fields.dart';
import 'package:your_manga_uikit/molecules/rating/rating.dart';

class YMRatingList extends StatelessWidget {
  final int rating;
  final double? ratingSize;
  final Color? ratingColor;
  final double? width;

  const YMRatingList({
    Key? key,
    required this.rating,
    this.width,
    this.ratingSize,
    this.ratingColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 76,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(5, (index) =>
          YMRating(
            size: ratingSize,
            background: index + 1 > rating ?
              context.interfaceFields.bgOverlay :
              ratingColor,
          )
        ),
      ),
    );
  }
}
