import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/authentication/use_case/log_out.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/injection.dart';

part 'authentication_bloc.freezed.dart';
part 'authentication_event.dart';
part 'authentication_state.dart';

@injectable
class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(const AuthenticationState.initial());

  @override
  Stream<AuthenticationState> mapEventToState(AuthenticationEvent event) async* {
    yield* event.map(
      authenticationCheckRequested: _onAuthenticationCheckRequested,
      loggedOut: _onLoggedOut,
    );
  }

  Stream<AuthenticationState> _onLoggedOut(_) async* {
    final _failureOrUnit = await getIt<LogOut>()(getIt<NoParams>());
    yield _failureOrUnit.fold(
      (failure) => const AuthenticationState.authenticationSuccess(),
      (unit) => const AuthenticationState.authenticationFailure(),
    );
  }

  Stream<AuthenticationState> _onAuthenticationCheckRequested(_) async* {
    final _userOption = await getIt<GetLoggedInUser>()(getIt<NoParams>());
    yield _userOption.fold(
        () => const AuthenticationState.authenticationFailure(),
        (_) => const AuthenticationState.authenticationSuccess(),
    );
  }
}
