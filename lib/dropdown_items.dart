import 'package:flutter/material.dart';

class DropdownItems {
  static List<DropdownMenuItem<String>> buildJarakDropdownItems() {
    return <String>['Km', 'M', 'Cm', 'Mm'].map((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList();
  }

  static List<DropdownMenuItem<String>> buildSuhuDropdownItems() {
    return <String>['Celcius', 'Fahrenheit', 'Kelvin', 'Reamur'].map((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList();
  }

  static List<DropdownMenuItem<String>> buildBeratDropdownItems() {
    return <String>['Kg', 'Gr', 'Mg', 'Ons', 'Lbs'].map((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList();
  }
}
