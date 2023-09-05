import 'package:flutter/material.dart';

class iOSWidgets extends StatefulWidget {
  const iOSWidgets({super.key});

  @override
  State<iOSWidgets> createState() => _iOSWidgetsState();
}

class _iOSWidgetsState extends State<iOSWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: const  Column(
            children: [
              TextField(),

            ],
          ),
        ),
      ),
    );
  }
}
