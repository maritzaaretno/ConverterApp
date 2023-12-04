class SuhuConverterC {
  static const Map<String, Map<String, double>> _conversionTable = {
    'Celcius': {'Fahrenheit': 9 / 5, 'Kelvin': 1, 'Reamur': 4 / 5},
    'Fahrenheit': {'Celcius': 5 / 9, 'Kelvin': 5 / 9, 'Reamur': 4 / 9},
    'Kelvin': {'Celcius': -273.15, 'Fahrenheit': -459.67, 'Reamur': -218.52},
    'Reamur': {'Celcius': 5 / 4, 'Fahrenheit': 9 / 4, 'Kelvin': 5 / 4},
  };

  double convertSuhu(double inputValue, String fromUnit, String toUnit) {
    double result = 0.0;

    if (_conversionTable.containsKey(fromUnit) &&
        _conversionTable[fromUnit]!.containsKey(toUnit)) {
      double conversionFactor = _conversionTable[fromUnit]![toUnit]!;
      result = inputValue * conversionFactor;
    }
    return result;
  }
}
