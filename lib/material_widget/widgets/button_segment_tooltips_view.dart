import 'package:flutter/material.dart';

class ButtonSegmentTooltipsView extends StatefulWidget {
  const ButtonSegmentTooltipsView({super.key});

  @override
  State<ButtonSegmentTooltipsView> createState() =>
      _ButtonSegmentTooltipsViewState();
}

class _ButtonSegmentTooltipsViewState extends State<ButtonSegmentTooltipsView> {
  Set<Sizes> selection = <Sizes>{Sizes.large, Sizes.extraLarge};

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: const Text("ButtonSegment Tooltips View"),
      ),
      backgroundColor: Colors.grey.shade100,
      body: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        alignment: Alignment.center,
        child: SegmentedButton<Sizes>(
          segments: const <ButtonSegment<Sizes>>[
            ButtonSegment<Sizes>(
                value: Sizes.extraSmall,
                label: Text('XS'),
                tooltip: "This is a size extra small"),
            ButtonSegment<Sizes>(
                value: Sizes.small,
                label: Text('S'),
                tooltip: "This is a small size"),
            ButtonSegment<Sizes>(
                value: Sizes.medium,
                label: Text('M'),
                tooltip: "This is a size medium Size"),
            ButtonSegment<Sizes>(
                value: Sizes.large,
                label: Text('L'),
                tooltip: "This is a large size"),
            ButtonSegment<Sizes>(
                value: Sizes.extraLarge,
                label: Text('XL'),
                tooltip: "This is a size extra large"),
          ],
          selected: selection,
          onSelectionChanged: (Set<Sizes> newSelection) {
            setState(() {
              selection = newSelection;
            });
          },
          multiSelectionEnabled: true,
        ),
      ),
    );
  }
}

enum Sizes { extraSmall, small, medium, large, extraLarge }
