import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/tag_management/use_case/get_tag.dart';

import '../../core/repository/mock_tag_repository.dart';

void main() {
  MockTagRepository mockTagRepository;
  GetTag useCase;
  setUp(
    () {
      mockTagRepository = MockTagRepository();
      useCase = GetTag(mockTagRepository);
    },
  );
  const id = 1;
  final tag = Tag(creationDate: DateTime.now(), creator: User(), id: 1, modificationDate: DateTime.now(), name: "Sports");
  test(
    "Should get the Tag with a given id if successful",
    () async {
      // Arrange
      when(mockTagRepository.getTag(any)).thenAnswer((_) async => right(tag));
      // Act
      final result = await useCase(Params(id: id));
      // Assert
      expect(result, right(tag));
      verify(mockTagRepository.getTag(any));
      verifyNoMoreInteractions(mockTagRepository);
    },
  );
  group(
    "testing on failure",
    () {
      test(
        "Should return a NotFoundError in case there's no Tag with the given id",
        () async {
          // Arrange
          when(mockTagRepository.getTag(any)).thenAnswer((_) async => left(const CoreFailure.notFoundError()));
          // Act
          final result = await useCase(Params(id: id));
          // Assert
          expect(result, left(const CoreFailure.notFoundError()));
          verify(mockTagRepository.getTag(any));
          verifyNoMoreInteractions(mockTagRepository);
        },
      );
      test(
        "Should return a ServerError in case there's some problem with the server",
        () async {
          // Arrange
          when(mockTagRepository.getTag(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(id: id));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockTagRepository.getTag(any));
          verifyNoMoreInteractions(mockTagRepository);
        },
      );
    },
  );
}
