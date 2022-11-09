import 'package:flutter/material.dart';

class MediaQueryUtils {
  static T wrapper<T>(BuildContext context, T xs, {T? sm, T? md, T? lg}) {
    MediaType mediaType = type(context);
    if (mediaType == MediaType.xs && xs != null) return xs;
    if (mediaType == MediaType.sm && sm != null) return sm;
    if (mediaType == MediaType.md && md != null) return md;
    if (mediaType == MediaType.lg && lg != null) return lg;

    return xs;
  }

  static MediaType type(BuildContext context) {
    Size? size;
    double? height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    //xs (for phones - screens less than 768px wide)
    //sm (for tablets - screens equal to or greater than 768px wide)
    //md (for small laptops - screens equal to or greater than 992px wide)
    //lg (for laptops and desktops - screens equal to or greater than 1200px wide)

    if (width < 768.0) {
      return MediaType.xs;
    } else if (width < 992) {
      return MediaType.sm;
    } else if (width < 1200) {
      return MediaType.md;
    } else {
      return MediaType.lg;
    }
  }
}

enum MediaType { xs, sm, md, lg }
