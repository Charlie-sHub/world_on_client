import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

GetIt getIt = GetIt.instance;

@injectableInit
void configureDependencies(String environment) => $initGetIt(
      getIt,
      environment: environment,
    );
