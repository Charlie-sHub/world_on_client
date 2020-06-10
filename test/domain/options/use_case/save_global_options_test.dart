import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/options/use_case/save_global_options.dart';

import '../../../constants.dart';
import '../repository/mock_remote_options_repository.dart';

void main() {
  MockRemoteOptionsRepository mockRemoteOptionsRepository;
  SaveGlobalOptions useCase;
  setUp(
    () {
      mockRemoteOptionsRepository = MockRemoteOptionsRepository();
      useCase = SaveGlobalOptions(mockRemoteOptionsRepository);
    },
  );
  final params = Params(
    languageCode: "es",
  );
  test(
    descriptionReturnNothing,
    () async {
      // Arrange
      when(mockRemoteOptionsRepository.saveGlobalOptions(any)).thenAnswer((_) async => right(null));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(null));
      _verifyInteractions(mockRemoteOptionsRepository);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        descriptionServerError,
        () async {
          // Arrange
          const coreFailure = CoreFailure.serverError();
          when(mockRemoteOptionsRepository.saveGlobalOptions(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          _verifyInteractions(mockRemoteOptionsRepository);
        },
      );
    },
  );
}

void _verifyInteractions(MockRemoteOptionsRepository mockRemoteOptionsRepository) {
  verify(mockRemoteOptionsRepository.saveGlobalOptions(any));
  verifyNoMoreInteractions(mockRemoteOptionsRepository);
}
