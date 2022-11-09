import 'package:flutter/material.dart';

import '../icons/svg_icons.dart';

class SvgPatterns extends SvgIcons {
  const SvgPatterns(
      {Key? key,
      required String path,
      required String label,
      double? size,
      Color? color})
      : super(
            key: key,
            path: path,
            label: label,
            size: size ?? 24,
            color: color);

  factory SvgPatterns.blob({double? size, Color? color}) => SvgPatterns(
        path: 'packages/your_manga_uikit/assets/patterns/blob_pattern.svg',
        label: 'blob pattern',
        size: size,
        color: color,
      );

  factory SvgPatterns.puddle({double? size, Color? color}) => SvgPatterns(
    path: 'packages/your_manga_uikit/assets/patterns/puddle_pattern.svg',
    label: 'puddle pattern',
    size: size,
    color: color,
  );

  factory SvgPatterns.wave({double? size, Color? color}) => SvgPatterns(
    path: 'packages/your_manga_uikit/assets/patterns/wave_pattern.svg',
    label: 'wave pattern',
    size: size,
    color: color,
  );
}
