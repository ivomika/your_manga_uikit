import 'package:flutter/material.dart';

@immutable
class YMButtonStyle{
  final Color? backgroundColor;
  final Color? overlayColor;
  final double? elevation;
  final RoundedRectangleBorder? shape;
  final MouseCursor? mouseCursor;

  const YMButtonStyle({
      this.backgroundColor,
      this.overlayColor,
      this.elevation,
      this.shape,
      this.mouseCursor});
}