import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/widget/app_widget.dart';

@Deprecated("Prefer the use of either main dev or prod to un the app")
void main() {
  const environment = Environment.dev;
  configureDependencies(environment);
  runApp(
    const AppWidget(
      environment: environment,
    ),
  );
}
