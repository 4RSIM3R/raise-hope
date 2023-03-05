part of 'theme.dart';

abstract class FormTheme {
  // jangan akes ini langsung mending (FormTheme.outlinedInput
  // pass ini ke ThemeData di app_styles.dart, biar gaperlu manual ngasih style tiap form
  static const outlinedInput = InputDecoration(
    border: OutlineInputBorder(),
  );

  // kek gini
  static const inputDecoration = InputDecorationTheme(
    border: OutlineInputBorder(),
    floatingLabelBehavior: FloatingLabelBehavior.always,
  );
}
