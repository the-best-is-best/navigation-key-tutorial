import 'package:flutter/material.dart';
import 'package:get_parameters/extensions/extensions.dart';
import 'package:get_parameters/screens/main_screen.dart';
import 'package:get_parameters/screens/search_screen.dart';
import 'package:get_parameters/static/static_var.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigateKey,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case "/":
            myExt.setArguments = settings;
            return MaterialPageRoute(
                builder: (context) => const MainScreen(), settings: settings);

          case "/searchRoute":
            myExt.setArguments = settings;
            return MaterialPageRoute(
                builder: (context) => const SearchScreen(), settings: settings);
        }
        return null;
      },
      // routes: {
      //   "/": (_) => const MainScreen(),
      //   "/searchRoute": (_) => const SearchScreen(),
      // },
    );
  }
}
