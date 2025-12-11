import 'package:roman_numeral_builder/to_roman.dart';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Please provide an integer as an argument.');
    return;
  }
  print(toRoman(int.parse(arguments[0])));
}
