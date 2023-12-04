import 'package:clean_code/SuhuConverter/suhu_converter_controller.dart';
import 'package:flutter/material.dart';
import '../Widgets/convert_btn.dart';
import '../Widgets/dropdown_row_converter.dart';
import '../Widgets/input_converter.dart';
import '../Widgets/title_converter.dart';
import '../dropdown_items.dart';
import '../Widgets/showdialog.dart';

class SuhuConverterPage extends StatefulWidget {
  const SuhuConverterPage({super.key});

  @override
  _SuhuConverterPageState createState() => _SuhuConverterPageState();
}

class _SuhuConverterPageState extends State<SuhuConverterPage> {
  String selectedUnit1 = 'Celcius';
  String selectedUnit2 = 'Fahrenheit';
  double inputValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Konversi Suhu',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const ConverterPageTitleRow('From:', 'To:'),
            ConverterPageDropdownsRow(
              selectedUnit1: selectedUnit1,
              selectedUnit2: selectedUnit2,
              onUnit1Changed: (String? value1) {
                setState(() {
                  selectedUnit1 = value1!;
                });
              },
              onUnit2Changed: (String? value2) {
                setState(() {
                  selectedUnit2 = value2!;
                });
              },
              dropdownItems: DropdownItems.buildSuhuDropdownItems(),
            ),
            const SizedBox(height: 20),
            InputTextField(
              onChanged: (value) {
                setState(() {
                  inputValue = double.tryParse(value) ?? 0.0;
                });
              },
              labelText: 'Masukkan nilai',
            ),
            const SizedBox(height: 40),
            ConvertButton(
              onPressed: _convertSuhu,
              label: 'CONVERT',
            ),
          ],
        ),
      ),
    );
  }

  void _convertSuhu() {
    double result = SuhuConverterC().convertSuhu(
      inputValue,
      selectedUnit1,
      selectedUnit2,
    );
    showResultDialog(context, '$inputValue', selectedUnit1, selectedUnit2, result);
  }
}
