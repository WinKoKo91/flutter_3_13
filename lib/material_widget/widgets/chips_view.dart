import 'package:flutter/material.dart';

class ChipColorView extends StatefulWidget {
  const ChipColorView({super.key});

  @override
  State<ChipColorView> createState() => _ChipColorViewState();
}

class _ChipColorViewState extends State<ChipColorView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text("Chip Color "),
      ),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.all(20),
          child: Wrap(
            spacing: 16,
            children: [
              Chip(
                label: Text("diabled Color"),
                color: MaterialStateProperty.all(Colors.grey),
              ),
              Chip(
                label: Text("background Color"),
                color: MaterialStateProperty.all(Colors.blue),
              ),
              Chip(
                label: Text("selected Color"),
                color: MaterialStateProperty.all(Colors.greenAccent),
              ),
              Chip(
                label: Text("selected Color"),
                avatar: Icon(Icons.check),
                color: MaterialStateProperty.all(Colors.yellow),
              ),
            ],
          )),
    );
  }
}
