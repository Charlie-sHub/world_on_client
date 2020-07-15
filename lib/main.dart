import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/widget/app_widget.dart';

void main() {
  configureDependencies(Environment.dev);
  runApp(AppWidget());
}
