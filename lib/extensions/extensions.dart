import 'package:flutter/cupertino.dart';
import 'package:get_parameters/static/static_var.dart';

extension ExtBuildContext on BuildContext {
  void back() {
    Navigator.of(this).pop();
  }

  void toNamed(String routeName, {dynamic argument}) {
    Navigator.pushNamed(this, routeName, arguments: argument);
  }
}

extension ExtStaticVar on AppExtension {
  BuildContext get context => navigateKey.currentContext!;

  void back() {
    Navigator.of(context).pop();
  }

  void toNamed(String routeName, {dynamic argument}) {
    Navigator.pushNamed(context, routeName, arguments: argument);
  }

  Object? get getArguments => _arguments;
  static Object? _arguments;

  set setArguments(RouteSettings settings) => _arguments = settings.arguments;
}
