import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.iconfig.dart';

GetIt getIt = GetIt.instance;

@injectableInit
void configureDependencies(String environment) => $initGetIt(
      getIt,
      environment: environment,
    );
// TODO: Configure injection for third party classes such as Firebase classes
