import 'package:flutter/material.dart';

class NewChipView extends StatefulWidget {
  const NewChipView({super.key});

  @override
  State<NewChipView> createState() => _NewChipViewState();
}

class _NewChipViewState extends State<NewChipView> {
  bool isFilter = false;
  bool isChoice = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text("New Chip"),
      ),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.all(20),
          child: Wrap(
            spacing: 16,
            children: [
              FilterChip.elevated(
                label: const Text("Filter Chip"),
                selected: isFilter,
                color: MaterialStateProperty.all(Colors.grey),
                onSelected: (bool value) {
                  setState(() {
                    isFilter = value;
                  });
                },
              ),
              ChoiceChip(
                label: Text("Choice Chip"),
                color: MaterialStateProperty.all(Colors.blue),
                selected: isChoice,
                onSelected: (value) {
                  setState(() {
                    isChoice = value;
                  });
                },
              ),
              ActionChip(
                label: Text("Action Chip"),
                onPressed: () {
                  const snackBar = SnackBar(
                    content: Text('On Pressed Action Chip'),
                  );

                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                color: MaterialStateProperty.all(Colors.greenAccent),
              ),
            ],
          )),
    );
  }
}
