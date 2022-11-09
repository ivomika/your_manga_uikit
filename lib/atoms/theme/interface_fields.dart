import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';
part 'interface_fields.tailor.dart';

@Tailor(
    themes: ['light', 'dark'],
    themeGetter: ThemeGetter.onBuildContext
)
class _$InterfaceFields{
  static List<Color> bgPrimary = [const Color(0xFFF6F8FB), const Color(0xFFF6F8FB)];
  static List<Color> bgSecondary = [const Color(0xFFFFFFFF), const Color(0xFFFFFFFF)];
  static List<Color> bgOverlay = [const Color(0xFFA1A7B0), const Color(0xFFA1A7B0)];
  static List<Color> bgLoading = [const Color(0xFFD9D9D9), const Color(0xFFD9D9D9)];

  static List<Color> textPrimary = [const Color(0xFF303952), const Color(0xFF303952)];
  static List<Color> textSecondary = [const Color(0xFF596275), const Color(0xFF596275)];
  static List<Color> textPlaceholder = [const Color(0xFFD9D9D9), const Color(0xFFD9D9D9)];

  static List<Color> accentPrimary = [const Color(0xFF786FA6), const Color(0xFF786FA6)];
  static List<Color> accentSecondary = [const Color(0xFF3DC1D3), const Color(0xFF3DC1D3)];

  static List<Color> error = [const Color(0xFFE66767), const Color(0xFFE66767)];
  static List<Color> warning = [const Color(0xFFF5CD79), const Color(0xFFF5CD79)];
}
