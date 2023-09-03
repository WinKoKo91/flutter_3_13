import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveView extends StatefulWidget {
  const AdaptiveView({super.key});

  @override
  State<AdaptiveView> createState() => _AdaptiveViewState();
}

class _AdaptiveViewState extends State<AdaptiveView> {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();
  bool isOn = false;
  bool isCheck = false;
  double slider = 0;
  late String gender = 'Male';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator.adaptive(
        key: _refreshIndicatorKey,
        onRefresh: () {
          return Future<void>.delayed(const Duration(seconds: 3));
        },
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                    onPressed: onPressedShowDialog,
                    child: const Text('Adaptive Dialog')),
                Switch.adaptive(
                    value: isOn,
                    onChanged: (value) {
                      setState(() {
                        isOn = value;
                      });
                    }),
                Checkbox.adaptive(
                    value: isCheck,
                    onChanged: (value) {
                      setState(() {
                        isCheck = value!;
                      });
                    }),
                const CircularProgressIndicator.adaptive(),
                Slider.adaptive(
                    value: slider,
                    onChanged: (value) {
                      setState(() {
                        slider = value;
                      });
                    }),
                RadioListTile.adaptive(
                    value: 'Male',
                    title: const Text('Male'),
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value!;
                      });
                    }),
                RadioListTile.adaptive(
                    value: 'Female',
                    title: const Text('Female'),
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value!;
                      });
                    }),
                RadioListTile.adaptive(
                    value: 'Other',
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
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Show refresh indicator programmatically on button tap.
          _refreshIndicatorKey.currentState?.show();
        },
        icon: const Icon(Icons.refresh),
        label: const Text('Show Indicator'),
      ),
    );
  }

  void onPressedShowDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog.adaptive(
        title: const Text("Adaptive Dialog"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Cancel"),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Ok"),
          ),
        ],
      ),
    );
  }
}
