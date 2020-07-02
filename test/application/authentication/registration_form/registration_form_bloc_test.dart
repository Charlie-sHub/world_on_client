import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/authentication/use_case/register.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/email_address.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  Register register;
  GetLoggedInUser getLoggedInUser;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      register = getIt<Register>();
      getLoggedInUser = getIt<GetLoggedInUser>();
    },
  );
  final thirdPartyUser = User.empty().copyWith(
    email: EmailAddress("test@test.test"),
    password: Password("abcd*1234"),
  );
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () async => getIt<RegistrationFormBloc>(),
    skip: 0,
    expect: [RegistrationFormState.initial()],
  );
  group(
    "Testing initialization",
    () {
      blocTest(
        "description",
        build: () async {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(thirdPartyUser));
          return getIt<RegistrationFormBloc>();
        },
        act: (bloc) async => bloc.add(RegistrationFormEvent.initialize()),
        verify: (_) async => verify(getLoggedInUser.call(any)),
        expect: [
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser,
          ),
        ],
      );
    },
  );
}
