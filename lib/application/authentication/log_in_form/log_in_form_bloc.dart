import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/authentication/use_case/log_in.dart';
import 'package:worldon/domain/authentication/use_case/log_in_google.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/email_address.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';
import 'package:worldon/injection.dart';

part 'log_in_form_bloc.freezed.dart';

part 'log_in_form_event.dart';

part 'log_in_form_state.dart';

@injectable
class LogInFormBloc extends Bloc<LogInFormEvent, LogInFormState> {
  LogInFormBloc() : super(LogInFormState.initial()) {
    on<_EmailChanged>(_onEmailChanged);
    on<_PasswordChanged>(_onPasswordChanged);
    on<_LoggedIn>(_onLoggedIn);
    on<_LoggedInGoogle>(_onLoggedInGoogle);
  }

  FutureOr<void> _onLoggedInGoogle(_, Emitter emit) async {
    emit(
      state.copyWith(
        isSubmitting: true,
        failureOrSuccessOption: none(),
      ),
    );
    final failureOrSuccess = await getIt<LogInGoogle>()(
      getIt<NoParams>(),
    );
    emit(
      failureOrSuccess.fold(
        (failure) => state.copyWith(
          isSubmitting: false,
          failureOrSuccessOption: some(left(failure)),
        ),
        (userOption) => state.copyWith(
          isSubmitting: false,
          thirdPartyUserOption: userOption,
          failureOrSuccessOption: some(right(unit)),
        ),
      ),
    );
  }

  FutureOr<void> _onLoggedIn(_, Emitter emit) async {
    Either<Failure, Unit>? failureOrSuccess;
    if (state.email.isValid() && state.password.isValid()) {
      emit(
        state.copyWith(
          isSubmitting: true,
          failureOrSuccessOption: none(),
        ),
      );
      failureOrSuccess = await getIt<LogIn>()(
        Params(
          email: state.email,
          password: state.password,
        ),
      );
      emit(
        state.copyWith(
          isSubmitting: false,
          failureOrSuccessOption: some(failureOrSuccess),
        ),
      );
    } else {
      emit(
        state.copyWith(
          showErrorMessages: true,
          failureOrSuccessOption: optionOf(failureOrSuccess),
        ),
      );
    }
  }

  void _onPasswordChanged(_PasswordChanged event, Emitter emit) => emit(
        state.copyWith(
          password: Password(event.password),
          failureOrSuccessOption: none(),
        ),
      );

  void _onEmailChanged(_EmailChanged event, Emitter emit) => emit(
        state.copyWith(
          email: EmailAddress(event.email),
          failureOrSuccessOption: none(),
        ),
      );
}
