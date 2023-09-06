import 'package:flutter/material.dart';

class TextFieldErrorWidgetView extends StatefulWidget {
  const TextFieldErrorWidgetView({super.key});

  @override
  State<TextFieldErrorWidgetView> createState() =>
      _TextFieldErrorWidgetViewState();
}

class _TextFieldErrorWidgetViewState extends State<TextFieldErrorWidgetView> {
  bool showCustomErrorWidget = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextField Error Widgets"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        alignment: Alignment.center,
        child:  TextField(
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: "Name",
            error: showCustomErrorWidget
                ? const Row(
              children: [
                Icon(
                  Icons.error,
                  color: Colors.pinkAccent,
                ),
                Text("Name "),
                Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                Text(" can't be empty"),
              ],
            )
                : null,
          ),
          onSubmitted: (value) {
            setState(() {
              if (value.isEmpty) {
                showCustomErrorWidget = true;
              } else {
                showCustomErrorWidget = false;
              }
            });
          },
        ),
        ),

    );
  }
}
