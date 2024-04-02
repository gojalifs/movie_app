extension YearExtractor on String {
  String get year {
    if (length != 10 || this[4] != '-' || this[7] != '-') {
      return 'Invalid year';
    }
    return substring(0, 4);
  }
}
