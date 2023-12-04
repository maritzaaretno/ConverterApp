import 'package:flutter/material.dart';
import 'package:clean_code/BeratConverter/berat_converter_page.dart';
import 'package:clean_code/JarakConverter/jarak_converter_page.dart';
import 'package:clean_code/SuhuConverter/suhu_converter_page.dart';
import '../Widgets/icon_btn.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background-image.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 300),
                const Text(
                  'CONVERT APP',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButtonWidget(
                      icon: Icons.scale_rounded,
                      tooltip: 'Konversi Berat',
                      color: Colors.indigo,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BeratConverterPage(),
                          ),
                        );
                      },
                    ),
                    IconButtonWidget(
                      icon: Icons.straighten_rounded,
                      tooltip: 'Konversi Jarak',
                      color: Colors.indigo,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const JarakConverterPage(),
                          ),
                        );
                      },
                    ),
                    IconButtonWidget(
                      icon: Icons.thermostat_outlined,
                      tooltip: 'Konversi Suhu',
                      color: Colors.indigo,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SuhuConverterPage(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


