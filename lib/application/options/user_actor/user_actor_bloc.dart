import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/options/use_case/delete_user.dart';
import 'package:worldon/injection.dart';

part 'user_actor_bloc.freezed.dart';
part 'user_actor_event.dart';
part 'user_actor_state.dart';

@injectable
class UserActorBloc extends Bloc<UserActorEvent, UserActorState> {
  UserActorBloc() : super(const UserActorState.initial()) {
    on<_Deleted>(_onDeleted);
  }

  FutureOr<void> _onDeleted(_Deleted event, Emitter emit) async {
    emit(const UserActorState.actionInProgress());
    final _eitherFailureOrSuccess = await getIt<DeleteUser>()(
      Params(userToDelete: event.user),
    );
    emit(
      _eitherFailureOrSuccess.fold(
        (failure) => UserActorState.deletionFailure(failure),
        (_) => const UserActorState.deletionSuccess(),
      ),
    );
  }
}
