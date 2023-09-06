import 'package:flutter/material.dart';

class SwitchOutlineWidthView extends StatefulWidget {
  const SwitchOutlineWidthView({super.key});

  @override
  State<SwitchOutlineWidthView> createState() => _SwitchOutlineWidthViewState();
}

class _SwitchOutlineWidthViewState extends State<SwitchOutlineWidthView> {
  double width = 1;
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      bottomNavigationBar: SafeArea(
        child: SizedBox(
          height: 56,
          child: Slider(
            value: width,
            onChanged: (value) {
              setState(() {
                width = value;
              });
            },
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text("Expansion Panel List"),
      ),
      body: Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Switch(
            value: isOn,
            trackOutlineColor:
                MaterialStateProperty.all(Colors.deepOrangeAccent),
            trackOutlineWidth: MaterialStateProperty.all(width * 10),
            onChanged: (value) {
              setState(() {
                isOn = value;
              });
            },
          )),
    );
  }
}
