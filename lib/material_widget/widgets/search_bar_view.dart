import 'package:flutter/material.dart';

class SearchBarView extends StatefulWidget {
  const SearchBarView({super.key});

  @override
  State<SearchBarView> createState() => _SearchBarViewState();
}

class _SearchBarViewState extends State<SearchBarView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text("Search Bar"),
      ),
      body: Container(
          padding: const EdgeInsets.all(20),
          child: SizedBox(
            height: 56,
            child: SearchBar(
              onSubmitted: (String? value) {
                final snackBar = SnackBar(
                  content: Text('Submitted Value : ${value ?? ""}'),
                );

                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
            ),
          )),
    );
  }
}
