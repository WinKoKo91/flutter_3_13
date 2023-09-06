import 'package:flutter/material.dart';
import 'package:flutter_3_13/material_widget/widgets/button_segment_tooltips_view.dart';
import 'package:flutter_3_13/material_widget/widgets/chips_view.dart';
import 'package:flutter_3_13/material_widget/widgets/expansion_panel_list_view.dart';
import 'package:flutter_3_13/material_widget/widgets/new_chips_view.dart';
import 'package:flutter_3_13/material_widget/widgets/search_bar_view.dart';
import 'package:flutter_3_13/material_widget/widgets/switch_outline_width_view.dart';
import 'package:flutter_3_13/material_widget/widgets/textfield_error_widget_view.dart';

class MaterialWidgetView extends StatefulWidget {
  const MaterialWidgetView({super.key});

  @override
  State<MaterialWidgetView> createState() => _MaterialWidgetViewState();
}

class _MaterialWidgetViewState extends State<MaterialWidgetView> {
  bool showCustomErrorWidget = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Material Widget properties"),
      ),
      endDrawer: NavigationDrawer(
        selectedIndex: 1,
        tilePadding: EdgeInsets.symmetric(horizontal: 100, vertical: 100),
        children: [
          ListTile(
            leading: const Icon(Icons.category),
            onTap: () {},
            title: const Text("Category"),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.person),
            title: const Text("Profile"),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.info),
            title: const Text("Info"),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.exit_to_app),
            title: const Text("Logout"),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            OutlinedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const TextFieldErrorWidgetView()));
                },
                child: Text("TextField Error Widget")),
            OutlinedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const ButtonSegmentTooltipsView()));
                },
                child: const Text("ButtonSegment Tooltips")),
            OutlinedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const ExpansionPanelListView()));
                },
                child: const Text("ExpansionPanelList Gap")),
            OutlinedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const SwitchOutlineWidthView()));
                },
                child: const Text("Switch TrackOutlineWidth")),
            OutlinedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChipColorView()));
                },
                child: const Text("Chip Color")),
            OutlinedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NewChipView()));
                },
                child: const Text("New Chip ")),
            OutlinedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SearchBarView()));
                },
                child: const Text("Search Bar View "))
          ],
        ),
      ),
    );
  }
}
