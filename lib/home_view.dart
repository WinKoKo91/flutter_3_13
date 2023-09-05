import 'package:flutter/material.dart';
import 'package:flutter_3_13/adaptive_view.dart';
import 'package:flutter_3_13/ios_widgets_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/images/flutter3_13.png'),
             const  SizedBox(
                height: 32,
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AdaptiveView()));
                },
                child: const Text("Adaptive Widget"),
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const IOSWidgetsView()));
                },
                child: const Text("iOS Widget"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
