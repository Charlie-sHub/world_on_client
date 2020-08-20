import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/widget/app_widget.dart';

// TODO: Use flutter_dotenv for environments
// It's what Jose recommended, but i should ask for a more specific example
// as i'm not sure how best to use it, or even if i can get advantage of it right now
void mainCommon(String environment) {
  configureDependencies(environment);
  runApp(
    Provider(
      create: (context) => environment,
      child: const AppWidget(),
    ),
  );
}
