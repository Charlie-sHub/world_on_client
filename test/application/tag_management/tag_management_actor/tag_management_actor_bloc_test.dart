import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/application/tag_management/tag_management_actor/tag_management_actor_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/tag_management/use_case/delete_tag.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  DeleteTag deleteTag;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      deleteTag = getIt<DeleteTag>();
    },
  );
  final deletionEvent = TagManagementActorEvent.deleted(Tag.empty());
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () async => getIt<TagManagementActorBloc>(),
    skip: 0,
    expect: [const TagManagementActorState.initial()],
  );
  group(
    TestDescription.deleteEventTests,
    () {
      const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
      blocTest(
        TestDescription.shouldEmitSuccess,
        build: () async {
          when(deleteTag.call(any)).thenAnswer((_) async => right(unit));
          return getIt<TagManagementActorBloc>();
        },
        act: (bloc) async => bloc.add(deletionEvent),
        verify: (_) async {
          verify(deleteTag.call(any));
          verifyNoMoreInteractions(deleteTag);
        },
        expect: [
          const TagManagementActorState.actionInProgress(),
          const TagManagementActorState.deletionSuccess(),
        ],
      );
      blocTest(
        TestDescription.shouldEmitFailure,
        build: () async {
          when(deleteTag.call(any)).thenAnswer((_) async => left(failure));
          return getIt<TagManagementActorBloc>();
        },
        act: (bloc) async => bloc.add(deletionEvent),
        verify: (_) async {
          verify(deleteTag.call(any));
          verifyNoMoreInteractions(deleteTag);
        },
        expect: [
          const TagManagementActorState.actionInProgress(),
          const TagManagementActorState.deletionFailure(failure),
        ],
      );
    },
  );
}
