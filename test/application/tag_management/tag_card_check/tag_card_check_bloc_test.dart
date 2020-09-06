import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/application/tag_management/tag_card_check/tag_card_check_bloc.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_tag.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  GetLoggedInUser getLoggedInUser;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      getLoggedInUser = getIt<GetLoggedInUser>();
    },
  );
  final tagInInterests = getValidTag();
  final tagNotInInterests = tagInInterests.copyWith(id: 2);
  final user = getValidUser().copyWith(interestsIds: {tagInInterests.id});
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<TagCardCheckBloc>(),
    expect: [],
  );
  group(
    TestDescription.testingInitialization,
    () {
      blocTest(
        "Should emit inInterests",
        build: () {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(user));
          return getIt<TagCardCheckBloc>();
        },
        act: (bloc) async => bloc.add(TagCardCheckEvent.initialized(tagInInterests)),
        verify: (_) async {
          verify(getLoggedInUser.call(any));
          verifyNoMoreInteractions(getLoggedInUser);
        },
        expect: [const TagCardCheckState.inInterests()],
      );
      blocTest(
        "Should emit inInterests",
        build: () {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(user));
          return getIt<TagCardCheckBloc>();
        },
        act: (bloc) async => bloc.add(TagCardCheckEvent.initialized(tagNotInInterests)),
        verify: (_) async {
          verify(getLoggedInUser.call(any));
          verifyNoMoreInteractions(getLoggedInUser);
        },
        expect: [const TagCardCheckState.notInInterests()],
      );
    },
  );
}
