extension StringX on String {
  bool get isEmail => RegExp(
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
      .hasMatch(this);

  bool get isPassword => length > 6;

  bool get isPhoneNumber => RegExp(r'^\d{10}$').hasMatch(this);

  String get titleCase {
    String lower = toLowerCase();

    // capitalize first letter of each word except for articles
    final List<String> articles = [
      'a',
      'an',
      'the',
      'and',
      'but',
      'or',
      'for',
      'nor',
      'on',
      'at',
      'to',
      'from',
      'by',
      'of',
      'in',
      'with',
    ];

    return lower.split(' ').map((word) {
      if (articles.contains(word)) {
        return word;
      } else {
        return '${word[0].toUpperCase()}${word.substring(1)}';
      }
    }).join(' ');
  }
}
