import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/application/authentication/registration_form/registration_form_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/authentication/use_case/register.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/email_address.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/injection.dart';

import '../../../domain/core/methods/get_valid_user.dart';
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
  const name = "test";
  const username = "test";
  const password = "abcd*1234";
  const emailAddress = "test@test.test";
  final birthday = DateTime.now().subtract(const Duration(days: 100000));
  const description = "For testing";
  final interests = {
    Tag.empty().copyWith(
      name: Name("Test"),
      creator: getValidUser(),
    ),
  };
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  final thirdPartyUser = User.empty().copyWith(
    email: EmailAddress(emailAddress),
    password: Password(password),
  );
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () async => getIt<RegistrationFormBloc>(),
    skip: 0,
    expect: [RegistrationFormState.initial()],
  );
  group(
    "Testing initialization with a third party user",
    () {
      blocTest(
        TestDescription.shouldEmitInitialized,
        build: () async {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(thirdPartyUser));
          return getIt<RegistrationFormBloc>();
        },
        act: (bloc) async => bloc.add(const RegistrationFormEvent.initialize()),
        verify: (_) async => verify(getLoggedInUser.call(any)),
        expect: [
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser,
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitInitial} since there's no third party user",
        build: () async {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => none());
          return getIt<RegistrationFormBloc>();
        },
        act: (bloc) async => bloc.add(const RegistrationFormEvent.initialize()),
        verify: (_) async => verify(getLoggedInUser.call(any)),
        skip: 0,
        expect: [RegistrationFormState.initial()],
      );
    },
  );
  group(
    "${TestDescription.groupOnSuccess} updating the user fields",
    () {
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the name",
        build: () async {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => none());
          return getIt<RegistrationFormBloc>();
        },
        act: (bloc) async {
          bloc.add(const RegistrationFormEvent.initialize());
          bloc.add(const RegistrationFormEvent.nameChange(name));
        },
        verify: (_) async => verify(getLoggedInUser.call(any)),
        expect: [
          RegistrationFormState.initial().copyWith(
            user: User.empty().copyWith(
              name: Name(name),
            ),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the username",
        build: () async {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => none());
          return getIt<RegistrationFormBloc>();
        },
        act: (bloc) async {
          bloc.add(const RegistrationFormEvent.initialize());
          bloc.add(const RegistrationFormEvent.usernameChange(username));
        },
        verify: (_) async => verify(getLoggedInUser.call(any)),
        expect: [
          RegistrationFormState.initial().copyWith(
            user: User.empty().copyWith(
              username: Name(username),
            ),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the password",
        build: () async {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => none());
          return getIt<RegistrationFormBloc>();
        },
        act: (bloc) async {
          bloc.add(const RegistrationFormEvent.initialize());
          bloc.add(const RegistrationFormEvent.passwordChange(password));
        },
        verify: (_) async => verify(getLoggedInUser.call(any)),
        expect: [
          RegistrationFormState.initial().copyWith(
            user: User.empty().copyWith(
              password: Password(password),
            ),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the email",
        build: () async {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => none());
          return getIt<RegistrationFormBloc>();
        },
        act: (bloc) async {
          bloc.add(const RegistrationFormEvent.initialize());
          bloc.add(const RegistrationFormEvent.emailAddressChange(emailAddress));
        },
        verify: (_) async => verify(getLoggedInUser.call(any)),
        expect: [
          RegistrationFormState.initial().copyWith(
            user: User.empty().copyWith(
              email: EmailAddress(emailAddress),
            ),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the birthday",
        build: () async {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => none());
          return getIt<RegistrationFormBloc>();
        },
        act: (bloc) async {
          bloc.add(const RegistrationFormEvent.initialize());
          bloc.add(RegistrationFormEvent.birthdayChange(birthday));
        },
        verify: (_) async => verify(getLoggedInUser.call(any)),
        expect: [
          RegistrationFormState.initial().copyWith(
            user: User.empty().copyWith(
              birthday: PastDate(birthday),
            ),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the description",
        build: () async {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => none());
          return getIt<RegistrationFormBloc>();
        },
        act: (bloc) async {
          bloc.add(const RegistrationFormEvent.initialize());
          bloc.add(const RegistrationFormEvent.descriptionChange(description));
        },
        verify: (_) async => verify(getLoggedInUser.call(any)),
        expect: [
          RegistrationFormState.initial().copyWith(
            user: User.empty().copyWith(
              description: EntityDescription(description),
            ),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the interests",
        build: () async {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => none());
          return getIt<RegistrationFormBloc>();
        },
        act: (bloc) async {
          bloc.add(const RegistrationFormEvent.initialize());
          bloc.add(RegistrationFormEvent.interestsChange(interests));
        },
        verify: (_) async => verify(getLoggedInUser.call(any)),
        expect: [
          RegistrationFormState.initial().copyWith(
            user: User.empty().copyWith(
              interests: interests,
            ),
          ),
        ],
      );
    },
  );
  group(
    "${TestDescription.groupOnSuccess} when submitting",
    () {
      blocTest(
        "${TestDescription.shouldEmitSuccess} when submitting with a new User",
        build: () async {
          when(register.call(any)).thenAnswer((_) async => right(unit));
          when(getLoggedInUser.call(any)).thenAnswer((_) async => none());
          return getIt<RegistrationFormBloc>();
        },
        act: (bloc) async {
          bloc.add(const RegistrationFormEvent.initialize());
          bloc.add(const RegistrationFormEvent.nameChange(name));
          bloc.add(const RegistrationFormEvent.usernameChange(username));
          bloc.add(const RegistrationFormEvent.passwordChange(password));
          bloc.add(const RegistrationFormEvent.emailAddressChange(emailAddress));
          bloc.add(RegistrationFormEvent.birthdayChange(birthday));
          bloc.add(const RegistrationFormEvent.descriptionChange(description));
          bloc.add(RegistrationFormEvent.interestsChange(interests));
          bloc.add(const RegistrationFormEvent.submit());
        },
        verify: (_) async {
          verify(getLoggedInUser.call(any));
          verify(register.call(any));
        },
        expect: [
          RegistrationFormState.initial().copyWith(
            user: User.empty().copyWith(
              name: Name(name),
            ),
            failureOrSuccessOption: none(),
          ),
          RegistrationFormState.initial().copyWith(
            user: User.empty().copyWith(
              name: Name(name),
              username: Name(username),
            ),
            failureOrSuccessOption: none(),
          ),
          RegistrationFormState.initial().copyWith(
            user: User.empty().copyWith(
              name: Name(name),
              username: Name(username),
              password: Password(password),
            ),
            failureOrSuccessOption: none(),
          ),
          RegistrationFormState.initial().copyWith(
            user: User.empty().copyWith(
              name: Name(name),
              username: Name(username),
              password: Password(password),
              email: EmailAddress(emailAddress),
            ),
            failureOrSuccessOption: none(),
          ),
          RegistrationFormState.initial().copyWith(
            user: User.empty().copyWith(
              name: Name(name),
              username: Name(username),
              password: Password(password),
              email: EmailAddress(emailAddress),
              birthday: PastDate(birthday),
            ),
            failureOrSuccessOption: none(),
          ),
          RegistrationFormState.initial().copyWith(
            user: User.empty().copyWith(
              name: Name(name),
              username: Name(username),
              password: Password(password),
              email: EmailAddress(emailAddress),
              birthday: PastDate(birthday),
              description: EntityDescription(description),
            ),
            failureOrSuccessOption: none(),
          ),
          RegistrationFormState.initial().copyWith(
            user: User.empty().copyWith(
              name: Name(name),
              username: Name(username),
              password: Password(password),
              email: EmailAddress(emailAddress),
              birthday: PastDate(birthday),
              description: EntityDescription(description),
              interests: interests,
            ),
            failureOrSuccessOption: none(),
          ),
          RegistrationFormState.initial().copyWith(
            user: User.empty().copyWith(
              name: Name(name),
              username: Name(username),
              password: Password(password),
              email: EmailAddress(emailAddress),
              birthday: PastDate(birthday),
              description: EntityDescription(description),
              interests: interests,
            ),
            isSubmitting: true,
            failureOrSuccessOption: none(),
          ),
          RegistrationFormState.initial().copyWith(
            user: User.empty().copyWith(
              name: Name(name),
              username: Name(username),
              password: Password(password),
              email: EmailAddress(emailAddress),
              birthday: PastDate(birthday),
              description: EntityDescription(description),
              interests: interests,
            ),
            isSubmitting: false,
            showErrorMessages: true,
            failureOrSuccessOption: some(right(unit)),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitSuccess} when submitting with a third party User",
        build: () async {
          when(register.call(any)).thenAnswer((_) async => right(unit));
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(thirdPartyUser));
          return getIt<RegistrationFormBloc>();
        },
        act: (bloc) async {
          bloc.add(const RegistrationFormEvent.initialize());
          bloc.add(const RegistrationFormEvent.nameChange(name));
          bloc.add(const RegistrationFormEvent.usernameChange(username));
          bloc.add(RegistrationFormEvent.birthdayChange(birthday));
          bloc.add(const RegistrationFormEvent.descriptionChange(description));
          bloc.add(RegistrationFormEvent.interestsChange(interests));
          bloc.add(const RegistrationFormEvent.submit());
        },
        verify: (_) async {
          verify(getLoggedInUser.call(any));
          verify(register.call(any));
        },
        expect: [
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser,
          ),
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser.copyWith(
              name: Name(name),
            ),
            failureOrSuccessOption: none(),
          ),
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser.copyWith(
              name: Name(name),
              username: Name(username),
            ),
            failureOrSuccessOption: none(),
          ),
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser.copyWith(
              name: Name(name),
              username: Name(username),
              birthday: PastDate(birthday),
            ),
            failureOrSuccessOption: none(),
          ),
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser.copyWith(
              name: Name(name),
              username: Name(username),
              birthday: PastDate(birthday),
              description: EntityDescription(description),
            ),
            failureOrSuccessOption: none(),
          ),
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser.copyWith(
              name: Name(name),
              username: Name(username),
              birthday: PastDate(birthday),
              description: EntityDescription(description),
              interests: interests,
            ),
            failureOrSuccessOption: none(),
          ),
          RegistrationFormState.initial().copyWith(
            user: User.empty().copyWith(
              name: Name(name),
              username: Name(username),
              password: Password(password),
              email: EmailAddress(emailAddress),
              birthday: PastDate(birthday),
              description: EntityDescription(description),
              interests: interests,
            ),
            isSubmitting: true,
            failureOrSuccessOption: none(),
          ),
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser.copyWith(
              name: Name(name),
              username: Name(username),
              birthday: PastDate(birthday),
              description: EntityDescription(description),
              interests: interests,
            ),
            isSubmitting: false,
            showErrorMessages: true,
            failureOrSuccessOption: some(right(unit)),
          ),
        ],
      );
    },
  );
  blocTest(
    "${TestDescription.shouldEmitFailure} when submitting with a third party User",
    build: () async {
      when(register.call(any)).thenAnswer((_) async => left(failure));
      when(getLoggedInUser.call(any)).thenAnswer((_) async => some(thirdPartyUser));
      return getIt<RegistrationFormBloc>();
    },
    act: (bloc) async {
      bloc.add(const RegistrationFormEvent.initialize());
      bloc.add(const RegistrationFormEvent.nameChange(name));
      bloc.add(const RegistrationFormEvent.usernameChange(username));
      bloc.add(RegistrationFormEvent.birthdayChange(birthday));
      bloc.add(const RegistrationFormEvent.descriptionChange(description));
      bloc.add(RegistrationFormEvent.interestsChange(interests));
      bloc.add(const RegistrationFormEvent.submit());
    },
    verify: (_) async {
      verify(getLoggedInUser.call(any));
      verify(register.call(any));
    },
    expect: [
      RegistrationFormState.initial().copyWith(
        user: thirdPartyUser,
      ),
      RegistrationFormState.initial().copyWith(
        user: thirdPartyUser.copyWith(
          name: Name(name),
        ),
        failureOrSuccessOption: none(),
      ),
      RegistrationFormState.initial().copyWith(
        user: thirdPartyUser.copyWith(
          name: Name(name),
          username: Name(username),
        ),
        failureOrSuccessOption: none(),
      ),
      RegistrationFormState.initial().copyWith(
        user: thirdPartyUser.copyWith(
          name: Name(name),
          username: Name(username),
          birthday: PastDate(birthday),
        ),
        failureOrSuccessOption: none(),
      ),
      RegistrationFormState.initial().copyWith(
        user: thirdPartyUser.copyWith(
          name: Name(name),
          username: Name(username),
          birthday: PastDate(birthday),
          description: EntityDescription(description),
        ),
        failureOrSuccessOption: none(),
      ),
      RegistrationFormState.initial().copyWith(
        user: thirdPartyUser.copyWith(
          name: Name(name),
          username: Name(username),
          birthday: PastDate(birthday),
          description: EntityDescription(description),
          interests: interests,
        ),
        failureOrSuccessOption: none(),
      ),
      RegistrationFormState.initial().copyWith(
        user: User.empty().copyWith(
          name: Name(name),
          username: Name(username),
          password: Password(password),
          email: EmailAddress(emailAddress),
          birthday: PastDate(birthday),
          description: EntityDescription(description),
          interests: interests,
        ),
        isSubmitting: true,
        failureOrSuccessOption: none(),
      ),
      RegistrationFormState.initial().copyWith(
        user: thirdPartyUser.copyWith(
          name: Name(name),
          username: Name(username),
          birthday: PastDate(birthday),
          description: EntityDescription(description),
          interests: interests,
        ),
        isSubmitting: false,
        showErrorMessages: true,
        failureOrSuccessOption: some(left(failure)),
      ),
    ],
  );
  blocTest(
    "${TestDescription.shouldEmitFailure} when submitting with a third party User",
    build: () async {
      when(register.call(any)).thenAnswer((_) async => left(failure));
      when(getLoggedInUser.call(any)).thenAnswer((_) async => some(thirdPartyUser));
      return getIt<RegistrationFormBloc>();
    },
    act: (bloc) async {
      bloc.add(const RegistrationFormEvent.initialize());
      bloc.add(const RegistrationFormEvent.nameChange(name));
      bloc.add(const RegistrationFormEvent.usernameChange(username));
      bloc.add(RegistrationFormEvent.birthdayChange(birthday));
      bloc.add(const RegistrationFormEvent.descriptionChange(description));
      bloc.add(RegistrationFormEvent.interestsChange(interests));
      bloc.add(const RegistrationFormEvent.submit());
      bloc.add(const RegistrationFormEvent.nameChange(name));
    },
    verify: (_) async {
      verify(getLoggedInUser.call(any));
      verify(register.call(any));
    },
    expect: [
      RegistrationFormState.initial().copyWith(
        user: thirdPartyUser,
      ),
      RegistrationFormState.initial().copyWith(
        user: thirdPartyUser.copyWith(
          name: Name(name),
        ),
        failureOrSuccessOption: none(),
      ),
      RegistrationFormState.initial().copyWith(
        user: thirdPartyUser.copyWith(
          name: Name(name),
          username: Name(username),
        ),
        failureOrSuccessOption: none(),
      ),
      RegistrationFormState.initial().copyWith(
        user: thirdPartyUser.copyWith(
          name: Name(name),
          username: Name(username),
          birthday: PastDate(birthday),
        ),
        failureOrSuccessOption: none(),
      ),
      RegistrationFormState.initial().copyWith(
        user: thirdPartyUser.copyWith(
          name: Name(name),
          username: Name(username),
          birthday: PastDate(birthday),
          description: EntityDescription(description),
        ),
        failureOrSuccessOption: none(),
      ),
      RegistrationFormState.initial().copyWith(
        user: thirdPartyUser.copyWith(
          name: Name(name),
          username: Name(username),
          birthday: PastDate(birthday),
          description: EntityDescription(description),
          interests: interests,
        ),
        failureOrSuccessOption: none(),
      ),
      RegistrationFormState.initial().copyWith(
        user: User.empty().copyWith(
          name: Name(name),
          username: Name(username),
          password: Password(password),
          email: EmailAddress(emailAddress),
          birthday: PastDate(birthday),
          description: EntityDescription(description),
          interests: interests,
        ),
        isSubmitting: true,
        failureOrSuccessOption: none(),
      ),
      RegistrationFormState.initial().copyWith(
        user: thirdPartyUser.copyWith(
          name: Name(name),
          username: Name(username),
          birthday: PastDate(birthday),
          description: EntityDescription(description),
          interests: interests,
        ),
        isSubmitting: false,
        showErrorMessages: true,
        failureOrSuccessOption: some(left(failure)),
      ),
      RegistrationFormState.initial().copyWith(
        user: thirdPartyUser.copyWith(
          name: Name(name),
          username: Name(username),
          birthday: PastDate(birthday),
          description: EntityDescription(description),
          interests: interests,
        ),
        showErrorMessages: true,
        failureOrSuccessOption: none(),
      ),
    ],
  );
}
