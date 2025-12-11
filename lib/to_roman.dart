const Map<String, int> romanNumerals = {
  'I': 1,
  'V': 5,
  'X': 10,
  'L': 50,
  'C': 100,
  'D': 500,
  'M': 1000,
};

const individualizedDecimalPlaces = {
  1: {'M', 'C', 'X', 'I'},
  2: {'MM', 'CC', 'XX', 'II'},
  3: {'MMM', 'CCC', 'XXX', 'III'},
  4: {'', 'CD', 'XL', 'IV'}, // 4 uses subtractive notation
  5: {'', 'D', 'L', 'V'},
  6: {'', 'DC', 'LX', 'VI'},
  7: {'', 'DCC', 'LXX', 'VII'},
  8: {'', 'DCCC', 'LXXX', 'VIII'},
  9: {'', 'CM', 'XC', 'IX'}, // 9 uses subtractive notation
};

String toRoman(dynamic integer) {
  String numeral = '';

  if (integer is! int) {
    throw FormatException('Input must be an integer.');
  }

  if (integer >= 4000) {
    throw ArgumentError(
      'Input integer is too large to convert to the standard form of Roman numerals.',
    );
  }

  final digits = integer.toString().split('').map(int.parse).toList();

  for (var i = 0; i < digits.length; i++) {
    final decimalPlace = 4 - digits.length + i;
    numeral +=
        individualizedDecimalPlaces[digits[i]]?.elementAt(decimalPlace) ?? '';
  }

  return numeral;
}
