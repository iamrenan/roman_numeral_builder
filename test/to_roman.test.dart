import 'package:roman_numeral_builder/to_roman.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(toRoman(0), '');
    expect(toRoman(1), 'I');
    expect(toRoman(4), 'IV');
    expect(toRoman(9), 'IX');
    expect(toRoman(39), 'XXXIX');
    expect(toRoman(246), 'CCXLVI');
    expect(toRoman(789), 'DCCLXXXIX');
    expect(toRoman(2421), 'MMCDXXI');
    expect(toRoman(2025), 'MMXXV');
    expect(toRoman(160), 'CLX');
    expect(toRoman(207), 'CCVII');
    expect(toRoman(1009), 'MIX');
    expect(toRoman(1066), 'MLXVI');
    expect(toRoman(3999), 'MMMCMXCIX');
    expect(() => toRoman(4000), throwsArgumentError);
    expect(() => toRoman(99999), throwsArgumentError);
    expect(() => toRoman('abc'), throwsFormatException);
    expect(() => toRoman(2499.40), throwsFormatException);
  });
}
