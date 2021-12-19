import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';

Failure getServerErrorFailure() => const Failure.coreData(
      CoreDataFailure.serverError(errorString: "Some Server error"),
    );
