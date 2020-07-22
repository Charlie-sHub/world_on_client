import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/application/core/experience_card_like_check/experience_card_like_check_bloc.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_experience.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/injection.dart';

import '../../../domain/core/methods/get_valid_user.dart';
import '../../../test_descriptions.dart';

void main() {
  GetLoggedInUser getLoggedInUser;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      getLoggedInUser = getIt<GetLoggedInUser>();
    },
  );
  final experienceLiked = getValidExperience();
  final experienceNotLiked = experienceLiked.copyWith(id: 2);
  final user = getValidUser().copyWith(experiencesLiked: {experienceLiked});
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<ExperienceCardLikeCheckBloc>(),
    expect: [],
  );
  group(
    TestDescription.testingInitialization,
    () {
      blocTest(
        "Should emit liked",
        build: () {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(user));
          return getIt<ExperienceCardLikeCheckBloc>();
        },
        act: (bloc) async => bloc.add(ExperienceCardLikeCheckEvent.initialized(experienceLiked)),
        verify: (_) async {
          verify(getLoggedInUser.call(any));
          verifyNoMoreInteractions(getLoggedInUser);
        },
        expect: [const ExperienceCardLikeCheckState.likes()],
      );
      blocTest(
        "Should emit neutral",
        build: () {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(user));
          return getIt<ExperienceCardLikeCheckBloc>();
        },
        act: (bloc) async => bloc.add(ExperienceCardLikeCheckEvent.initialized(experienceNotLiked)),
        verify: (_) async {
          verify(getLoggedInUser.call(any));
          verifyNoMoreInteractions(getLoggedInUser);
        },
        expect: [const ExperienceCardLikeCheckState.neutral()],
      );
    },
  );
}
