import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgIcons extends StatelessWidget {
  final String path;
  final String label;
  final Color? color;
  final double? size;

  const SvgIcons({
    Key? key,
    required this.path,
    required this.label,
    this.color,
    this.size}) : super(key: key);

  factory SvgIcons.arrowDown({double? size, Color? color}) =>
      SvgIcons(
        path: 'assets/icons/arrow_down.svg',
        label: 'arrow down',
        size: size,
        color: color,
      );

  factory SvgIcons.arrowUp({double? size, Color? color}) =>
      SvgIcons(
        path: 'assets/icons/arrow_up.svg',
        label: 'arrow up',
        size: size,
        color: color,
      );

  factory SvgIcons.arrowLeft({double? size, Color? color}) =>
      SvgIcons(
        path: 'assets/icons/back_arrow.svg',
        label: 'arrow left',
        size: size,
        color: color,
      );

  factory SvgIcons.check({double? size, Color? color}) =>
      SvgIcons(
        path: 'assets/icons/check.svg',
        label: 'check',
        size: size,
        color: color,
      );

  factory SvgIcons.filter({double? size, Color? color}) =>
      SvgIcons(
        path: 'assets/icons/filter.svg',
        label: 'filter',
        size: size,
        color: color,
      );

  factory SvgIcons.googleLogo({double? size, Color? color}) =>
      SvgIcons(
        path: 'assets/icons/google_logo.svg',
        label: 'google logo',
        size: size,
        color: color,
      );

  factory SvgIcons.play({double? size, Color? color}) =>
      SvgIcons(
        path: 'assets/icons/play.svg',
        label: 'play',
        size: size,
        color: color,
      );

  factory SvgIcons.search({double? size, Color? color}) =>
      SvgIcons(
        path: 'assets/icons/search.svg',
        label: 'search',
        size: size,
        color: color,
      );

  factory SvgIcons.star({double? size, Color? color}) =>
      SvgIcons(
        path: 'assets/icons/star.svg',
        label: 'star',
        size: size,
        color: color,
      );

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      semanticsLabel: label,
      width: size ?? 24,
      height: size ?? 24,
      color: color,
    );
  }
}
