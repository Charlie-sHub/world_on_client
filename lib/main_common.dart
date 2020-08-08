import 'package:flutter/material.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/widget/app_widget.dart';

void mainCommon(String environment) {
  configureDependencies(environment);
  runApp(
    AppWidget(
      environment: environment,
    ),
  );
}
