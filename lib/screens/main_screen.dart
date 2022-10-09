import 'package:flutter/material.dart';
import 'package:get_parameters/extensions/extensions.dart';
import 'package:get_parameters/static/static_var.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late TextEditingController searchTextController;
  @override
  void initState() {
    searchTextController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: TextField(
            controller: searchTextController,
            onEditingComplete: () {
              myExt.toNamed('/searchRoute', argument: {
                "searchText": searchTextController.text,
              });
              FocusManager.instance.primaryFocus?.unfocus();
              searchTextController.text = "";
            }),
      ),
    );
  }
}
