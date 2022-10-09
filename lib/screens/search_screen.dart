import 'package:flutter/material.dart';
import 'package:get_parameters/extensions/extensions.dart';
import '../extensions/extensions.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.scheduleFrameCallback((timeStamp) {
      print("arguments: ${ModalRoute.of(context)!.settings.arguments}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
