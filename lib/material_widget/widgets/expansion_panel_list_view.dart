import 'package:flutter/material.dart';

class ExpansionPanelListView extends StatefulWidget {
  const ExpansionPanelListView({super.key});

  @override
  State<ExpansionPanelListView> createState() => _ExpansionPanelListViewState();
}

class _ExpansionPanelListViewState extends State<ExpansionPanelListView> {
  final List<Item> _data = generateItems(3);
  double gapSize = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      bottomNavigationBar: SafeArea(
        child: SizedBox(
          height: 56,
          child: Slider(
            value: gapSize,
            onChanged: (value) {
              setState(() {
                gapSize = value;
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
          child: Column(
            children: [
              Text("TEst"),
              SingleChildScrollView(
                child: ExpansionPanelList(
                  materialGapSize: gapSize * 20,
                  expansionCallback: (int index, bool isExpanded) {
                    setState(() {
                      _data[index].isExpanded = isExpanded;
                    });
                  },
                  children: _data.map<ExpansionPanel>((Item item) {
                    return ExpansionPanel(
                      canTapOnHeader: true,
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          title: Text(item.headerValue),
                        );
                      },
                      body: ListTile(
                          title: Text(item.expandedValue),
                          subtitle: const Text(
                              'To delete this panel, tap the trash can icon'),
                          trailing: const Icon(Icons.delete),
                          onTap: () {
                            setState(() {
                              _data.removeWhere(
                                  (Item currentItem) => item == currentItem);
                            });
                          }),
                      isExpanded: item.isExpanded,
                    );
                  }).toList(),
                ),
              ),
            ],
          )),
    );
  }
}

class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> generateItems(int numberOfItems) {
  return List<Item>.generate(numberOfItems, (int index) {
    return Item(
      headerValue: 'Panel $index',
      expandedValue: 'This is item number $index',
    );
  });
}
