import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/widget/app_widget.dart';

import 'data/core/repository/development_core_repository.dart';

// TODO: Use flutter_dotenv for environments
// It's what Jose recommended, but i should ask for a more specific example
// as i'm not sure how best to use it, or even if i can get advantage of it right now
Future<void> mainCommon(String environment) async {
  configureDependencies(environment);
  // TODO: Delete this when the backend is ready to be used and the simulation is no longer necessary
  if (environment == Environment.dev) {
    final _devCoreRepository = DevelopmentCoreRepository();
    await _devCoreRepository.initializeDatabase();
  }
  runApp(
    Provider(
      create: (context) => environment,
      child: const AppWidget(),
    ),
  );
}
