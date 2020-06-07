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
      verify(mockRemoteOptionsRepository.saveGlobalOptions(any));
      verifyNoMoreInteractions(mockRemoteOptionsRepository);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        descriptionServerError,
        () async {
          // Arrange
          when(mockRemoteOptionsRepository.saveGlobalOptions(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockRemoteOptionsRepository.saveGlobalOptions(any));
          verifyNoMoreInteractions(mockRemoteOptionsRepository);
        },
      );
    },
  );
}
