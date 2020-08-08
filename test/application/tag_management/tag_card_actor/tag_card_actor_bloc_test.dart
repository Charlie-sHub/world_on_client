import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/application/tag_management/tag_card_actor/tag_card_actor_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/tag_management/use_case/add_tag_to_interests.dart';
import 'package:worldon/domain/tag_management/use_case/dismiss_tag_from_interests.dart';
import 'package:worldon/injection.dart';

import '../../../domain/core/methods/get_valid_tag.dart';
import '../../../test_descriptions.dart';

void main() {
  AddTagToInterests addTagToInterests;
  DismissTagFromInterests dismissTagFromInterests;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      addTagToInterests = getIt<AddTagToInterests>();
      dismissTagFromInterests = getIt<DismissTagFromInterests>();
    },
  );
  final tagInInterests = getValidTag();
  final tagNotInInterests = tagInInterests.copyWith(id: 2);
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<TagCardActorBloc>(),
    expect: [],
  );
  group(
    TestDescription.groupOnSuccess,
    () {
      blocTest(
        "${TestDescription.shouldEmitSuccess} after dismissing a Tag",
        build: () {
          when(dismissTagFromInterests.call(any)).thenAnswer((_) async => right(unit));
          return getIt<TagCardActorBloc>();
        },
        act: (bloc) async => bloc.add(TagCardActorEvent.dismissedFromInterests(tagInInterests)),
        verify: (_) async {
          verify(dismissTagFromInterests.call(any));
          verifyNoMoreInteractions(dismissTagFromInterests);
        },
        expect: [
          const TagCardActorState.actionInProgress(),
          const TagCardActorState.dismissalSuccess(),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitSuccess} after adding a Tag",
        build: () {
          when(addTagToInterests.call(any)).thenAnswer((_) async => right(unit));
          return getIt<TagCardActorBloc>();
        },
        act: (bloc) async => bloc.add(TagCardActorEvent.addedToInterests(tagNotInInterests)),
        verify: (_) async {
          verify(addTagToInterests.call(any));
          verifyNoMoreInteractions(addTagToInterests);
        },
        expect: [
          const TagCardActorState.actionInProgress(),
          const TagCardActorState.additionSuccess(),
        ],
      );
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {
      blocTest(
        "${TestDescription.shouldEmitFailure} after dismissing a Tag",
        build: () {
          when(dismissTagFromInterests.call(any)).thenAnswer((_) async => left(failure));
          return getIt<TagCardActorBloc>();
        },
        act: (bloc) async => bloc.add(TagCardActorEvent.dismissedFromInterests(tagInInterests)),
        verify: (_) async {
          verify(dismissTagFromInterests.call(any));
          verifyNoMoreInteractions(dismissTagFromInterests);
        },
        expect: [
          const TagCardActorState.actionInProgress(),
          const TagCardActorState.dismissalFailure(failure),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitFailure} after adding a Tag",
        build: () {
          when(addTagToInterests.call(any)).thenAnswer((_) async => left(failure));
          return getIt<TagCardActorBloc>();
        },
        act: (bloc) async => bloc.add(TagCardActorEvent.addedToInterests(tagNotInInterests)),
        verify: (_) async {
          verify(addTagToInterests.call(any));
          verifyNoMoreInteractions(addTagToInterests);
        },
        expect: [
          const TagCardActorState.actionInProgress(),
          const TagCardActorState.additionFailure(failure),
        ],
      );
    },
  );
}
