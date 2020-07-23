import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:kt_dart/kt.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/application/profile/profile_interests_watcher/profile_interests_watcher_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/profile/use_case/load_user_interests.dart';
import 'package:worldon/injection.dart';

import '../../../domain/core/methods/create_stream.dart';
import '../../../domain/core/methods/get_valid_user.dart';
import '../../../test_descriptions.dart';

void main() {
  LoadUserInterests loadUserInterests;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      loadUserInterests = getIt<LoadUserInterests>();
    },
  );
  final interests = KtList.of(Tag.empty());
  final user = getValidUser().copyWith(interests: interests.toSet().dart);
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<ProfileInterestsWatcherBloc>(),
    expect: [],
  );
  blocTest(
    TestDescription.shouldEmitSuccess,
    build: () {
      when(loadUserInterests.call(any)).thenAnswer((realInvocation) => createStream(right(interests)));
      return getIt<ProfileInterestsWatcherBloc>();
    },
    act: (bloc) async => bloc.add(ProfileInterestsWatcherEvent.watchInterestsStarted(user)),
    verify: (_) async {
      verify(loadUserInterests.call(any));
      verifyNoMoreInteractions(loadUserInterests);
    },
    expect: [
      const ProfileInterestsWatcherState.loadInProgress(),
      ProfileInterestsWatcherState.loadSuccess(interests),
    ],
  );
  blocTest(
    TestDescription.shouldEmitFailure,
    build: () {
      when(loadUserInterests.call(any)).thenAnswer((realInvocation) => createStream(left(failure)));
      return getIt<ProfileInterestsWatcherBloc>();
    },
    act: (bloc) async => bloc.add(ProfileInterestsWatcherEvent.watchInterestsStarted(user)),
    verify: (_) async {
      verify(loadUserInterests.call(any));
      verifyNoMoreInteractions(loadUserInterests);
    },
    expect: [
      const ProfileInterestsWatcherState.loadInProgress(),
      const ProfileInterestsWatcherState.loadFailure(failure),
    ],
  );
}
