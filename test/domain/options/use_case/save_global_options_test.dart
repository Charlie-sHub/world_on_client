import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/options/options.dart';
import 'package:worldon/domain/options/use_case/save_global_options.dart';

import '../../../../lib/domain/options/repository/remote_options_repository_mock.dart';
import '../../../test_descriptions.dart';

void main() {
  MockRemoteOptionsRepository mockRemoteOptionsRepository;
  SaveGlobalOptions useCase;
  setUp(
    () {
      mockRemoteOptionsRepository = MockRemoteOptionsRepository();
      useCase = SaveGlobalOptions(mockRemoteOptionsRepository);
    },
  );
  final params = Params(options: Options.empty());
  test(
    TestDescription.returnNothing,
    () async {
      // Arrange
      when(
        mockRemoteOptionsRepository.saveGlobalOptions(any),
      ).thenAnswer((_) async => right(unit));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(unit));
      _verifyInteractions(mockRemoteOptionsRepository);
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {
      test(
        TestDescription.serverError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
          when(
            mockRemoteOptionsRepository.saveGlobalOptions(any),
          ).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockRemoteOptionsRepository);
        },
      );
    },
  );
}

void _verifyInteractions(MockRemoteOptionsRepository mockRemoteOptionsRepository) {
  verify(
    mockRemoteOptionsRepository.saveGlobalOptions(any),
  );
  verifyNoMoreInteractions(mockRemoteOptionsRepository);
}
