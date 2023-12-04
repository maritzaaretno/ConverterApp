import 'package:clean_code/BeratConverter/berat_converter_controller.dart';
import 'package:flutter/material.dart';
import '../Widgets/convert_btn.dart';
import '../Widgets/dropdown_row_converter.dart';
import '../Widgets/input_converter.dart';
import '../Widgets/title_converter.dart';
import '../dropdown_items.dart';
import '../Widgets/showdialog.dart';

class BeratConverterPage extends StatefulWidget {
  const BeratConverterPage({super.key});

  @override
  _BeratConverterPageState createState() => _BeratConverterPageState();
}

class _BeratConverterPageState extends State<BeratConverterPage> {
  String selectedUnit1 = 'Kg';
  String selectedUnit2 = 'Gr';
  double inputValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Konversi Berat',
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
              dropdownItems: DropdownItems.buildBeratDropdownItems(),
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
              onPressed: _convertBerat,
              label: 'CONVERT',
            ),
          ],
        ),
      ),
    );
  }

  void _convertBerat() {
    double result = BeratConverterC.convertBerat(
      inputValue,
      selectedUnit1,
      selectedUnit2,
    );
    showResultDialog(
        context, '$inputValue', selectedUnit1, selectedUnit2, result);
  }
}
