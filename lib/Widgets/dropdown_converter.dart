import 'package:flutter/material.dart';

class ConverterPageDropdown extends StatelessWidget {
  final String selectedValue;
  final Function(String?) onChanged;
  final List<DropdownMenuItem<String>> items;

  const ConverterPageDropdown({
    Key? key,
    required this.selectedValue,
    required this.onChanged,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      padding: const EdgeInsets.all(30),
      value: selectedValue,
      onChanged: onChanged,
      items: items,
    );
  }
}
