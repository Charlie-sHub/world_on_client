import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/application/authentication/authentication/authentication_bloc.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/authentication/use_case/log_out.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/injection.dart';

import '../../../domain/core/methods/get_valid_user.dart';
import '../../../test_descriptions.dart';

void main() {
  GetLoggedInUser getLoggedInUser;
  LogOut logOut;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      getLoggedInUser = getIt<GetLoggedInUser>();
      logOut = getIt<LogOut>();
    },
  );
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () async => getIt<AuthenticationBloc>(),
    skip: 0,
    expect: [const AuthenticationState.initial()],
  );
  blocTest(
    "Should emit unAuthenticated",
    build: () async {
      when(logOut.call(getIt<NoParams>())).thenAnswer((_) async => right(unit));
      return getIt<AuthenticationBloc>();
    },
    act: (bloc) async => bloc.add(const AuthenticationEvent.logOut()),
    verify: (_) async => verify(logOut.call(any)),
    expect: [const AuthenticationState.unAuthenticated()],
  );
  group(
    "Testing the authentication request",
    () {
      blocTest(
        "Should emit authenticated",
        build: () async {
          when(getLoggedInUser.call(getIt<NoParams>())).thenAnswer((_) async => some(getValidUser()));
          return getIt<AuthenticationBloc>();
        },
        act: (bloc) async => bloc.add(const AuthenticationEvent.authenticationCheckRequest()),
        verify: (_) async => verify(getLoggedInUser.call(any)),
        expect: [const AuthenticationState.authenticated()],
      );
      blocTest(
        "Should emit unAuthenticated",
        build: () async {
          when(getLoggedInUser.call(getIt<NoParams>())).thenAnswer((_) async => none());
          return getIt<AuthenticationBloc>();
        },
        act: (bloc) async => bloc.add(const AuthenticationEvent.authenticationCheckRequest()),
        verify: (_) async => verify(getLoggedInUser.call(any)),
        expect: [const AuthenticationState.unAuthenticated()],
      );
    },
  );
}
