part of 'themes.dart';

class ThemeColors extends ThemeExtension<ThemeColors> {
  final Color primary;
  final Color scaffoldBackground;
  final Color secondary;
  final Color error;
  final Color surface;
  final Color white;
  final Color black2;

  const ThemeColors({
    required this.primary,
    required this.scaffoldBackground,
    this.secondary = Colors.black,
    this.error = Colors.red,
    this.surface = Colors.white,
    this.white = Colors.white,
    required this.black2,
  });

  static const ThemeColors light = ThemeColors(
    primary: Color(0xFFFFCC00),
    scaffoldBackground: Color(0xFFF7F9FC),
    black2: Color(0xff858585),
  );
  static const ThemeColors dark = ThemeColors(
    primary: Color(0xFFFFCC00),
    scaffoldBackground: Color(0xFFF1F1F1),
    black2: Color(0xff858585),
  );

  @override
  ThemeExtension<ThemeColors> copyWith({
    Color? primary,
    Color? scaffoldBackground,
    Color? black2,
  }) {
    return ThemeColors(
      primary: primary ?? this.primary,
      scaffoldBackground: scaffoldBackground ?? this.scaffoldBackground,
      black2: black2 ?? this.black2,
    );
  }

  @override
  ThemeExtension<ThemeColors> lerp(
      ThemeExtension<ThemeColors>? other, double t) {
    if (other is! ThemeColors) {
      return this;
    }
    return ThemeColors(
      primary: Color.lerp(primary, other.primary, t)!,
      black2: Color.lerp(black2, other.black2, t)!,
      scaffoldBackground:
          Color.lerp(scaffoldBackground, other.scaffoldBackground, t)!,
    );
  }
}
