// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element

part of 'interface_fields.dart';

// **************************************************************************
// ThemeTailorGenerator
// **************************************************************************

class InterfaceFields extends ThemeExtension<InterfaceFields> {
  const InterfaceFields({
    required this.bgPrimary,
    required this.bgSecondary,
    required this.bgOverlay,
    required this.bgLoading,
    required this.textPrimary,
    required this.textSecondary,
    required this.textPlaceholder,
    required this.accentPrimary,
    required this.accentSecondary,
    required this.error,
    required this.warning,
  });

  final Color bgPrimary;
  final Color bgSecondary;
  final Color bgOverlay;
  final Color bgLoading;
  final Color textPrimary;
  final Color textSecondary;
  final Color textPlaceholder;
  final Color accentPrimary;
  final Color accentSecondary;
  final Color error;
  final Color warning;

  static final InterfaceFields light = InterfaceFields(
    bgPrimary: _$InterfaceFields.bgPrimary[0],
    bgSecondary: _$InterfaceFields.bgSecondary[0],
    bgOverlay: _$InterfaceFields.bgOverlay[0],
    bgLoading: _$InterfaceFields.bgLoading[0],
    textPrimary: _$InterfaceFields.textPrimary[0],
    textSecondary: _$InterfaceFields.textSecondary[0],
    textPlaceholder: _$InterfaceFields.textPlaceholder[0],
    accentPrimary: _$InterfaceFields.accentPrimary[0],
    accentSecondary: _$InterfaceFields.accentSecondary[0],
    error: _$InterfaceFields.error[0],
    warning: _$InterfaceFields.warning[0],
  );

  static final InterfaceFields dark = InterfaceFields(
    bgPrimary: _$InterfaceFields.bgPrimary[1],
    bgSecondary: _$InterfaceFields.bgSecondary[1],
    bgOverlay: _$InterfaceFields.bgOverlay[1],
    bgLoading: _$InterfaceFields.bgLoading[1],
    textPrimary: _$InterfaceFields.textPrimary[1],
    textSecondary: _$InterfaceFields.textSecondary[1],
    textPlaceholder: _$InterfaceFields.textPlaceholder[1],
    accentPrimary: _$InterfaceFields.accentPrimary[1],
    accentSecondary: _$InterfaceFields.accentSecondary[1],
    error: _$InterfaceFields.error[1],
    warning: _$InterfaceFields.warning[1],
  );

  static final themes = [
    light,
    dark,
  ];

  @override
  InterfaceFields copyWith({
    Color? bgPrimary,
    Color? bgSecondary,
    Color? bgOverlay,
    Color? bgLoading,
    Color? textPrimary,
    Color? textSecondary,
    Color? textPlaceholder,
    Color? accentPrimary,
    Color? accentSecondary,
    Color? error,
    Color? warning,
  }) {
    return InterfaceFields(
      bgPrimary: bgPrimary ?? this.bgPrimary,
      bgSecondary: bgSecondary ?? this.bgSecondary,
      bgOverlay: bgOverlay ?? this.bgOverlay,
      bgLoading: bgLoading ?? this.bgLoading,
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      textPlaceholder: textPlaceholder ?? this.textPlaceholder,
      accentPrimary: accentPrimary ?? this.accentPrimary,
      accentSecondary: accentSecondary ?? this.accentSecondary,
      error: error ?? this.error,
      warning: warning ?? this.warning,
    );
  }

  @override
  InterfaceFields lerp(ThemeExtension<InterfaceFields>? other, double t) {
    if (other is! InterfaceFields) return this;
    return InterfaceFields(
      bgPrimary: Color.lerp(bgPrimary, other.bgPrimary, t)!,
      bgSecondary: Color.lerp(bgSecondary, other.bgSecondary, t)!,
      bgOverlay: Color.lerp(bgOverlay, other.bgOverlay, t)!,
      bgLoading: Color.lerp(bgLoading, other.bgLoading, t)!,
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t)!,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t)!,
      textPlaceholder: Color.lerp(textPlaceholder, other.textPlaceholder, t)!,
      accentPrimary: Color.lerp(accentPrimary, other.accentPrimary, t)!,
      accentSecondary: Color.lerp(accentSecondary, other.accentSecondary, t)!,
      error: Color.lerp(error, other.error, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InterfaceFields &&
            const DeepCollectionEquality().equals(bgPrimary, other.bgPrimary) &&
            const DeepCollectionEquality()
                .equals(bgSecondary, other.bgSecondary) &&
            const DeepCollectionEquality().equals(bgOverlay, other.bgOverlay) &&
            const DeepCollectionEquality().equals(bgLoading, other.bgLoading) &&
            const DeepCollectionEquality()
                .equals(textPrimary, other.textPrimary) &&
            const DeepCollectionEquality()
                .equals(textSecondary, other.textSecondary) &&
            const DeepCollectionEquality()
                .equals(textPlaceholder, other.textPlaceholder) &&
            const DeepCollectionEquality()
                .equals(accentPrimary, other.accentPrimary) &&
            const DeepCollectionEquality()
                .equals(accentSecondary, other.accentSecondary) &&
            const DeepCollectionEquality().equals(error, other.error) &&
            const DeepCollectionEquality().equals(warning, other.warning));
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        const DeepCollectionEquality().hash(bgPrimary),
        const DeepCollectionEquality().hash(bgSecondary),
        const DeepCollectionEquality().hash(bgOverlay),
        const DeepCollectionEquality().hash(bgLoading),
        const DeepCollectionEquality().hash(textPrimary),
        const DeepCollectionEquality().hash(textSecondary),
        const DeepCollectionEquality().hash(textPlaceholder),
        const DeepCollectionEquality().hash(accentPrimary),
        const DeepCollectionEquality().hash(accentSecondary),
        const DeepCollectionEquality().hash(error),
        const DeepCollectionEquality().hash(warning));
  }
}



extension InterfaceFieldsBuildContext on BuildContext {
  InterfaceFields get interfaceFields =>
      Theme.of(this).extension<InterfaceFields>()!;
}
