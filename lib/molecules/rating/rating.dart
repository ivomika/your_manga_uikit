import 'package:flutter/material.dart';
import 'package:your_manga_uikit/atoms/theme/interface_fields.dart';

class YMRating extends StatelessWidget {
  final double? size;
  final Color? background;

  const YMRating({
    Key? key,
    this.size,
    this.background}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _size = size ?? 12;

    return Container(
      decoration: BoxDecoration(
        color: background ?? context.interfaceFields.accentPrimary,
        borderRadius: BorderRadius.circular(_size/2)
      ),
      width: _size,
      height: _size,
    );
  }
}
