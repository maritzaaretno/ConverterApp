import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final String labelText;

  const InputTextField({super.key,
    required this.onChanged,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: labelText,
        border: const OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
    );
  }
}
