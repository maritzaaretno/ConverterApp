import 'package:flutter/material.dart';

class ConverterPageTitleRow extends StatelessWidget {
  final String leftTitle;
  final String rightTitle;

  const ConverterPageTitleRow(this.leftTitle, this.rightTitle, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildTitleText(leftTitle),
        const SizedBox(width: 120),
        _buildTitleText(rightTitle),
      ],
    );
  }

  Widget _buildTitleText(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 20,
        color: Colors.indigo,
      ),
    );
  }
}