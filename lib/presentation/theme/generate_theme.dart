part of 'theme.dart';

class GenerateTheme {
  static InputDecoration inputDecoration(String hint, {double radius = 5}) => InputDecoration(
        contentPadding: const EdgeInsets.all(12),
        fillColor: Colors.white,
        filled: true,
        hintText: hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide(color: Colors.transparent, width: 1),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide(color: Colors.transparent, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide(color: Colors.transparent, width: 1),
        ),
      );
}
