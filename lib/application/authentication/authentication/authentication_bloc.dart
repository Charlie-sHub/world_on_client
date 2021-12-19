import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/authentication/use_case/log_out.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/injection.dart';

part 'authentication_bloc.freezed.dart';
part 'authentication_event.dart';
part 'authentication_state.dart';

@injectable
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(const AuthenticationState.initial()) {
    on<_AuthenticationCheckRequested>(_onAuthenticationCheckRequested);
    on<_LoggedOut>(_onLoggedOut);
  }

  FutureOr<void> _onLoggedOut(_, Emitter emit) async {
    await getIt<LogOut>()(getIt<NoParams>());
    emit(const AuthenticationState.unAuthenticated());
  }

  FutureOr<void> _onAuthenticationCheckRequested(_, Emitter emit) async {
    final _userOption = await getIt<GetLoggedInUser>()(getIt<NoParams>());
    emit(
      _userOption.fold(
        () => const AuthenticationState.unAuthenticated(),
        (_) => const AuthenticationState.authenticated(),
      ),
    );
  }
}
