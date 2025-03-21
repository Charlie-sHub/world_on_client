import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/application/options/user_actor/user_actor_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/domain/options/use_case/delete_user.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  DeleteUser deleteUser;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      deleteUser = getIt<DeleteUser>();
    },
  );
  final user = getValidUser();
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<UserActorBloc>(),
    expect: [],
  );
  group(
    TestDescription.deleteEventTests,
    () {
      blocTest(
        TestDescription.shouldEmitSuccess,
        build: () {
          when(deleteUser.call(any)).thenAnswer((_) async => right(unit));
          return getIt<UserActorBloc>();
        },
        act: (bloc) async => bloc.add(UserActorEvent.deleted(user)),
        verify: (_) async {
          verify(deleteUser.call(any));
          verifyNoMoreInteractions(deleteUser);
        },
        expect: [
          const UserActorState.actionInProgress(),
          const UserActorState.deletionSuccess(),
        ],
      );
      blocTest(
        TestDescription.shouldEmitFailure,
        build: () {
          when(deleteUser.call(any)).thenAnswer((_) async => left(failure));
          return getIt<UserActorBloc>();
        },
        act: (bloc) async => bloc.add(UserActorEvent.deleted(user)),
        verify: (_) async {
          verify(deleteUser.call(any));
          verifyNoMoreInteractions(deleteUser);
        },
        expect: [
          const UserActorState.actionInProgress(),
          const UserActorState.deletionFailure(failure),
        ],
      );
    },
  );
}
