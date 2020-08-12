import 'package:flutter/material.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/widget/app_widget.dart';

// TODO: Use dotenv for environments
// It's what Jose recommended, but i should ask for a more specific example
// as i'm not sure how best to use it, or even if i can get advantage of it right now
void mainCommon(String environment) {
  configureDependencies(environment);
  runApp(
    AppWidget(
      environment: environment,
    ),
  );
}
