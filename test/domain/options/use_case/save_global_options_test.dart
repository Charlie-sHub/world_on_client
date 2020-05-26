import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/options.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/options/use_case/save_global_options.dart';

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
  const options = Options(
    id: 1,
    languageCode: "es",
  );
  test(
    "Should return nothing if everything goes well",
    () async {
      // Arrange
      when(mockRemoteOptionsRepository.saveGlobalOptions(any)).thenAnswer((_) async => right(null));
      // Act
      final result = await useCase(Params(options: options));
      // Assert
      expect(result, right(null));
      verify(mockRemoteOptionsRepository.saveGlobalOptions(any));
      verifyNoMoreInteractions(mockRemoteOptionsRepository);
    },
  );
  group(
    "Testing on failure",
    () {
      test(
        "Should return ServerError if there's a problem with the server",
        () async {
          // Arrange
          when(mockRemoteOptionsRepository.saveGlobalOptions(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(options: options));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockRemoteOptionsRepository.saveGlobalOptions(any));
          verifyNoMoreInteractions(mockRemoteOptionsRepository);
        },
      );
    },
  );
}
