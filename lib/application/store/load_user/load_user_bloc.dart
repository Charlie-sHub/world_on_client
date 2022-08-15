import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/error.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/injection.dart';

part 'load_user_bloc.freezed.dart';
part 'load_user_event.dart';
part 'load_user_state.dart';

@injectable
class LoadUserBloc extends Bloc<LoadUserEvent, LoadUserState> {
  LoadUserBloc() : super(const LoadUserState.initial()) {
    on<_LoadedUser>(_onLoadedUser);
  }

  FutureOr<void> _onLoadedUser(_LoadedUser event, Emitter emit) async {
    emit(const LoadUserState.actionInProgress());
    final userOption = await getIt<GetLoggedInUser>()(getIt<NoParams>());
    final user = userOption.fold(
      () => throw UnAuthenticatedError(),
      id,
    );
    emit(LoadUserState.loadSuccess(user));
  }
}
