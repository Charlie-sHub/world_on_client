import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/authentication/use_case/reset_password.dart';
import 'package:worldon/domain/core/validation/objects/email_address.dart';
import 'package:worldon/injection.dart';

part 'forgotten_password_form_bloc.freezed.dart';
part 'forgotten_password_form_event.dart';
part 'forgotten_password_form_state.dart';

@injectable
class ForgottenPasswordFormBloc
    extends Bloc<ForgottenPasswordFormEvent, ForgottenPasswordFormState> {
  ForgottenPasswordFormBloc() : super(ForgottenPasswordFormState.initial()) {
    on<_EmailChanged>(_onEmailChanged);
    on<_SentRequest>(_onSentRequest);
  }

  FutureOr<void> _onSentRequest(_, Emitter emit) async {
    Either<Failure, Unit>? _failureOrSuccess;
    if (state.email.isValid()) {
      emit(
        state.copyWith(
          isSubmitting: true,
          failureOrSuccessOption: none(),
        ),
      );
      _failureOrSuccess = await getIt<ResetPassword>()(
        Params(
          email: state.email,
        ),
      );
      emit(
        state.copyWith(
          isSubmitting: false,
          failureOrSuccessOption: some(_failureOrSuccess),
        ),
      );
    } else {
      emit(
        state.copyWith(
          showErrorMessages: true,
          failureOrSuccessOption: optionOf(_failureOrSuccess),
        ),
      );
    }
  }

  void _onEmailChanged(_EmailChanged event, Emitter emit) => emit(
        state.copyWith(
          email: EmailAddress(event.email),
          failureOrSuccessOption: none(),
        ),
      );
}
