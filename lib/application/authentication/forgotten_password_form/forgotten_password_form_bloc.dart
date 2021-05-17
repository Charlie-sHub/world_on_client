import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/authentication/use_case/reset_password.dart';
import 'package:worldon/domain/core/validation/objects/email_address.dart';

import '../../../injection.dart';

part 'forgotten_password_form_bloc.freezed.dart';
part 'forgotten_password_form_event.dart';
part 'forgotten_password_form_state.dart';

@injectable
class ForgottenPasswordFormBloc extends Bloc<ForgottenPasswordFormEvent, ForgottenPasswordFormState> {
  ForgottenPasswordFormBloc() : super(ForgottenPasswordFormState.initial());

  @override
  Stream<ForgottenPasswordFormState> mapEventToState(ForgottenPasswordFormEvent event) async* {
    yield* event.map(
      emailChanged: _onEmailChanged,
      sentRequest: _onSentRequest,
    );
  }

  Stream<ForgottenPasswordFormState> _onSentRequest(_) async* {
    Either<Failure, Unit>? _failureOrSuccess;
    if (state.email.isValid()) {
      yield state.copyWith(
        isSubmitting: true,
        failureOrSuccessOption: none(),
      );
      _failureOrSuccess = await getIt<ResetPassword>()(
        Params(
          email: state.email,
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

  Stream<ForgottenPasswordFormState> _onEmailChanged(_EmailChanged event) async* {
    yield state.copyWith(
      email: EmailAddress(event.email),
      failureOrSuccessOption: none(),
    );
  }
}
