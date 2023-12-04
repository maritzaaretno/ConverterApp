class BeratConverterC {
  static const Map<String, Map<String, double>> _unitFactors = {
    'Kg': {'Gr': 1000, 'Mg': 1000000, 'Ons': 10, 'Lbs': 2.20462},
    'Gr': {'Kg': 0.001, 'Mg': 1000, 'Ons': 0.035274, 'Lbs': 0.00220462},
    'Mg': {'Kg': 1e-6, 'Gr': 0.001, 'Ons': 3.5274e-5, 'Lbs': 2.20462e-6},
    'Ons': {'Kg': 0.0283495, 'Gr': 28.3495, 'Mg': 28349.5, 'Lbs': 0.0625},
    'Lbs': {'Kg': 0.453592, 'Gr': 453.592, 'Mg': 453592.0, 'Ons': 16},
  };

  static double convertBerat(double inputBerat, String fromUnit, String toUnit) {
    if (!_unitFactors.containsKey(fromUnit) || !_unitFactors[fromUnit]!.containsKey(toUnit)) {
      throw ArgumentError('Invalid unit');
    }

    double factor = _unitFactors[fromUnit]![toUnit]!;
    double result = inputBerat * factor;
    return result;
  }
}
