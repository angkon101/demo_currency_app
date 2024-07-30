import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState extends State<Home> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    result = double.parse(textEditingController.text) * 117.71;
    // this dollar rate of bangladesh is on 30.07.2024
    setState(() {});
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(5),
    );

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 161, 163, 165),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 216, 215, 212),
        title: const Text("Currency Converter"),
        centerTitle: true,
        elevation: 10,
        actions: const [
          Icon(
            Icons.heat_pump_rounded,
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  color: const Color.fromARGB(255, 65, 69, 72),
                  child: Text(
                    'Taka ${result != 0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0)}',
                    style: const TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 10, 8, 8),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: TextField(
                    controller: textEditingController,
                    style: const TextStyle(
                      fontSize: 33,
                      color: Color.fromARGB(255, 255, 254, 254),
                    ),
                    decoration: InputDecoration(
                      hintText: "Enter the USD",
                      hintStyle: const TextStyle(
                        fontSize: 33,
                        color: Color.fromARGB(255, 239, 234, 234),
                      ),
                      prefixIcon: const Icon(
                        Icons.monetization_on,
                        size: 40,
                      ),
                      prefixIconColor: const Color.fromARGB(255, 255, 255, 255),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 23, 22, 22),
                      focusedBorder: border,
                      enabledBorder: border,
                    ),
                    keyboardType: const TextInputType.numberWithOptions(
                      decimal: true,
                      signed: true,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0),
                child: ElevatedButton(
                  onPressed: () {
                    convert();
                  },
                  style: ButtonStyle(
                    elevation: WidgetStateProperty.all(10),
                    backgroundColor: WidgetStateProperty.all(Colors.amber),
                    fixedSize: WidgetStateProperty.all(const Size(120, 60)),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    side: WidgetStateProperty.all(
                      const BorderSide(
                        color: Color.fromARGB(255, 81, 77, 77),
                        width: 3,
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                  child: const Text("Convert"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home:  Home(),
  ));
}
