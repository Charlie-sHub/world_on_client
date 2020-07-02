import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/authentication/use_case/log_in.dart';
import 'package:worldon/domain/authentication/use_case/log_in_google.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';
import 'package:worldon/injection.dart';

part 'log_in_form_bloc.freezed.dart';

part 'log_in_form_event.dart';

part 'log_in_form_state.dart';

@injectable
class LogInFormBloc extends Bloc<LogInFormEvent, LogInFormState> {
  @override
  LogInFormState get initialState => LogInFormState.initial();

  @override
  Stream<LogInFormState> mapEventToState(LogInFormEvent event) async* {
    yield* event.map(
      usernameChange: onUsernameChange,
      passwordChange: onPasswordChange,
      logIn: onLogIn,
      logInGoogle: onLogInGoogle,
    );
  }

  Stream<LogInFormState> onLogInGoogle(_LogInGoogle event) async* {
    final _logInGoogle = getIt<LogInGoogle>();
    yield state.copyWith(
      isSubmitting: true,
      failureOrSuccessOption: none(),
    );
    final _failureOrSuccess = await _logInGoogle(getIt<NoParams>());
    yield state.copyWith(
      isSubmitting: false,
      failureOrSuccessOption: some(_failureOrSuccess),
    );
  }

  Stream<LogInFormState> onLogIn(_LogIn event) async* {
    Either<Failure, Unit> _failureOrSuccess;
    if (state.username.isValid() && state.password.isValid()) {
      final _logIn = getIt<LogIn>();
      yield state.copyWith(
        isSubmitting: true,
        failureOrSuccessOption: none(),
      );
      _failureOrSuccess = await _logIn(
        Params(
          username: state.username,
          password: state.password,
        ),
      );
      yield state.copyWith(
        isSubmitting: false,
        failureOrSuccessOption: some(_failureOrSuccess),
      );
    } else {
      yield state.copyWith(
        showErrorMessages: true,
        failureOrSuccessOption: optionOf(_failureOrSuccess),
      );
    }
  }

  Stream<LogInFormState> onPasswordChange(_PasswordChange event) async* {
    yield state.copyWith(
      password: Password(
        event.password,
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<LogInFormState> onUsernameChange(_UsernameChange event) async* {
    yield state.copyWith(
      username: Name(
        event.username,
      ),
      failureOrSuccessOption: none(),
    );
  }
}
