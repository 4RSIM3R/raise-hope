part of 'theme.dart';

abstract class ButtonTheme {
  static EdgeInsets defaultPadding = const EdgeInsets.symmetric(vertical: 24);

  static ElevatedButtonThemeData elevated = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: defaultPadding,
    ),
  );

  static OutlinedButtonThemeData outlined = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      padding: defaultPadding,
    ),
  );

  static TextButtonThemeData text = TextButtonThemeData(
    style: TextButton.styleFrom(
      padding: defaultPadding,
    ),
  );

  static FilledButtonThemeData filled = FilledButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: defaultPadding,
    ),
  );
}
