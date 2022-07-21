import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  static const routeName = 'SearchPage';

  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  static const TAG = 'SearchPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: const Text("Search"),
        ),
      ),
    );
  }
}
