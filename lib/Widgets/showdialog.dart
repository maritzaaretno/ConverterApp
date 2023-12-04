import 'package:flutter/material.dart';

void showResultDialog(BuildContext context, String inputValue, String selectedUnit1, String selectedUnit2, double result) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text('Hasil Konversi'),
      content: Text('$inputValue $selectedUnit1 = $result $selectedUnit2'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('OK'),
        ),
      ],
    ),
  );
}