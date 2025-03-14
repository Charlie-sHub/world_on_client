import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/options/use_case/delete_user.dart';

import '../../../injection.dart';

part 'user_actor_bloc.freezed.dart';
part 'user_actor_event.dart';
part 'user_actor_state.dart';

@injectable
class UserActorBloc extends Bloc<UserActorEvent, UserActorState> {
  UserActorBloc() : super(const UserActorState.initial());

  @override
  Stream<UserActorState> mapEventToState(UserActorEvent event) async* {
    yield* event.map(
      deleted: _onDeleted,
    );
  }

  Stream<UserActorState> _onDeleted(_Deleted event) async* {
    yield const UserActorState.actionInProgress();
    final _eitherFailureOrSuccess = await getIt<DeleteUser>()(
      Params(userToDelete: event.user),
    );
    yield _eitherFailureOrSuccess.fold(
      (failure) => UserActorState.deletionFailure(failure),
      (_) => const UserActorState.deletionSuccess(),
    );
  }
}
