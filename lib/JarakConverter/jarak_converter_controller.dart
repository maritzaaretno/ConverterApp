class JarakConverterC {
  static const Map<String, double> _unitFactors = {
    'Km': 1000,
    'M': 1,
    'Cm': 0.01,
    'Mm': 0.001,
  };

  static double convertJarak(double inputJarak, String fromUnit, String toUnit) {
    if (!_unitFactors.containsKey(fromUnit) || !_unitFactors.containsKey(toUnit)) {
      throw ArgumentError('Unit not supported');
    }

    double fromFactor = _unitFactors[fromUnit]!;
    double toFactor = _unitFactors[toUnit]!;

    double result = inputJarak * (fromFactor / toFactor);
    return result;
  }
}
