import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IOSWidgetsView extends StatefulWidget {
  const IOSWidgetsView({super.key});

  @override
  State<IOSWidgetsView> createState() => _IOSWidgetsViewState();
}

class _IOSWidgetsViewState extends State<IOSWidgetsView> {
  DateTime date = DateTime(2023, 9, 4);
  String gender = 'Male';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("iOS Widgets"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
         const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Input Text',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton(
              onPressed: () {
                _showDialog(
                  CupertinoDatePicker(
                    initialDateTime: date,
                    mode: CupertinoDatePickerMode.monthYear,
                    // new property
                    use24hFormat: true,
                    // This shows day of week alongside day of month
                    showDayOfWeek: true,
                    // This is called when the user changes the date.
                    onDateTimeChanged: (DateTime newDate) {
                      setState(() => date = newDate);
                    },
                  ),
                );
              },
              child: Text(
                '${date.month}-${date.year}',
                style: const TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            RadioListTile.adaptive(
                value: 'Male',
                useCupertinoCheckmarkStyle: true,
                // new property
                title: const Text('Male'),
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value!;
                  });
                }),
            RadioListTile.adaptive(
                value: 'Female',
                useCupertinoCheckmarkStyle: true,
                // new property
                title: const Text('Female'),
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value!;
                  });
                }),
            RadioListTile.adaptive(
                value: 'Other',
                useCupertinoCheckmarkStyle: true,
                // new property
                title: const Text('Other'),
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value!;
                  });
                }),
          ],
        ),
      ),
    );
  }

  void _showDialog(Widget child) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 216,
        padding: const EdgeInsets.only(top: 6.0),
        // The Bottom margin is provided to align the popup above the system
        // navigation bar.
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        // Provide a background color for the popup.
        color: CupertinoColors.systemBackground.resolveFrom(context),
        // Use a SafeArea widget to avoid system overlaps.
        child: SafeArea(
          top: false,
          child: child,
        ),
      ),
    );
  }
}
