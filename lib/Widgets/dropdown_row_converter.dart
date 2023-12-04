import 'package:flutter/material.dart';
import 'dropdown_converter.dart';

class ConverterPageDropdownsRow extends StatelessWidget {
  final String selectedUnit1;
  final String selectedUnit2;
  final Function(String?) onUnit1Changed;
  final Function(String?) onUnit2Changed;
  final List<DropdownMenuItem<String>> dropdownItems;

  const ConverterPageDropdownsRow({
    Key? key,
    required this.selectedUnit1,
    required this.selectedUnit2,
    required this.onUnit1Changed,
    required this.onUnit2Changed,
    required this.dropdownItems,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ConverterPageDropdown(
          selectedValue: selectedUnit1,
          onChanged: onUnit1Changed,
          items: dropdownItems,
        ),
        const SizedBox(width: 20),
        ConverterPageDropdown(
          selectedValue: selectedUnit2,
          onChanged: onUnit2Changed,
          items: dropdownItems,
        ),
      ],
    );
  }
}