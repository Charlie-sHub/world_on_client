import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/application/authentication/log_in_form/log_in_form_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/authentication/use_case/log_in.dart';
import 'package:worldon/domain/authentication/use_case/log_in_google.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  LogIn logIn;
  LogInGoogle logInGoogle;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      logIn = getIt<LogIn>();
      logInGoogle = getIt<LogInGoogle>();
    },
  );
  const username = "testing";
  const password = "abcd*1234";
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () async => getIt<LogInFormBloc>(),
    skip: 0,
    expect: [LogInFormState.initial()],
  );
  group(
    TestDescription.groupOnSuccess,
    () {
      blocTest(
        "${TestDescription.shouldEmitSuccess} Logging in normally",
        build: () async {
          when(logIn.call(any)).thenAnswer((_) async => right(unit));
          return getIt<LogInFormBloc>();
        },
        act: (bloc) async {
          bloc.add(const LogInFormEvent.usernameChange(username));
          bloc.add(const LogInFormEvent.passwordChange(password));
          bloc.add(const LogInFormEvent.logIn());
        },
        verify: (_) async => verify(logIn.call(any)),
        expect: [
          LogInFormState.initial().copyWith(
            username: Name(username),
          ),
          LogInFormState.initial().copyWith(
            username: Name(username),
            password: Password(password),
          ),
          LogInFormState.initial().copyWith(
            username: Name(username),
            password: Password(password),
            isSubmitting: true,
          ),
          LogInFormState.initial().copyWith(
            username: Name(username),
            password: Password(password),
            isSubmitting: false,
            failureOrSuccessOption: some(right(unit)),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitSuccess} Logging in with Google",
        build: () async {
          when(logInGoogle.call(any)).thenAnswer((_) async => right(unit));
          return getIt<LogInFormBloc>();
        },
        act: (bloc) async {
          bloc.add(const LogInFormEvent.usernameChange(username));
          bloc.add(const LogInFormEvent.passwordChange(password));
          bloc.add(const LogInFormEvent.logInGoogle());
        },
        verify: (_) async => verify(logInGoogle.call(any)),
        expect: [
          LogInFormState.initial().copyWith(
            username: Name(username),
          ),
          LogInFormState.initial().copyWith(
            username: Name(username),
            password: Password(password),
          ),
          LogInFormState.initial().copyWith(
            username: Name(username),
            password: Password(password),
            isSubmitting: true,
          ),
          LogInFormState.initial().copyWith(
            username: Name(username),
            password: Password(password),
            isSubmitting: false,
            failureOrSuccessOption: some(right(unit)),
          ),
        ],
      );
    },
  );
  blocTest(
    "${TestDescription.shouldEmitFailure} Logging in normally",
    build: () async {
      when(logIn.call(any)).thenAnswer((_) async => left(failure));
      return getIt<LogInFormBloc>();
    },
    act: (bloc) async {
      bloc.add(const LogInFormEvent.usernameChange(username));
      bloc.add(const LogInFormEvent.passwordChange(password));
      bloc.add(const LogInFormEvent.logIn());
    },
    verify: (_) async => verify(logIn.call(any)),
    expect: [
      LogInFormState.initial().copyWith(
        username: Name(username),
      ),
      LogInFormState.initial().copyWith(
        username: Name(username),
        password: Password(password),
      ),
      LogInFormState.initial().copyWith(
        username: Name(username),
        password: Password(password),
        isSubmitting: true,
      ),
      LogInFormState.initial().copyWith(
        username: Name(username),
        password: Password(password),
        isSubmitting: false,
        failureOrSuccessOption: some(left(failure)),
      ),
    ],
  );
  // How to tests that logIn is not called if the credentials aren't valid
}
