import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';

Failure getGeoLocationError() => const Failure.coreData(
      CoreDataFailure.geoLocationError(errorString: "Some sort of error"),
    );
