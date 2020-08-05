import 'dart:io';

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
import 'package:worldon/domain/core/validation/objects/password_confirmator.dart';
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
  const differentPassword = "abcd*123";
  const emailAddress = "test@test.test";
  final birthday = DateTime.now().subtract(const Duration(days: 100000));
  const description = "For testing";
  final interests = {
    Tag.empty().copyWith(
      name: Name("Test"),
      creator: getValidUser(),
    ),
  };
  final imageFile = File("assets/non_existing_person_placeholder.jpg");
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  final thirdPartyUser = User.empty().copyWith(
    email: EmailAddress(emailAddress),
    password: Password(password),
    imageFileOption: some(imageFile),
  );
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<RegistrationFormBloc>(),
    expect: [],
  );
  group(
    "Testing initialization",
    () {
      blocTest(
        TestDescription.shouldEmitInitialized,
        build: () {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(thirdPartyUser));
          return getIt<RegistrationFormBloc>();
        },
        act: (bloc) async => bloc.add(const RegistrationFormEvent.initialized()),
        verify: (_) async => verify(getLoggedInUser.call(any)),
        expect: [
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser,
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitInitial} since there's no third party user",
        build: () {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => none());
          return getIt<RegistrationFormBloc>();
        },
        act: (bloc) async => bloc.add(const RegistrationFormEvent.initialized()),
        verify: (_) async => verify(getLoggedInUser.call(any)),
        skip: 0,
        expect: [RegistrationFormState.initial()],
      );
    },
  );
  group(
    "${TestDescription.groupOnSuccess} updating the user fields",
    () {
      // TODO: Test Eula check
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the imageFile",
        build: () {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => none());
          return getIt<RegistrationFormBloc>();
        },
        act: (bloc) async {
          bloc.add(const RegistrationFormEvent.initialized());
          bloc.add(RegistrationFormEvent.imageChanged(imageFile));
        },
        verify: (_) async => verify(getLoggedInUser.call(any)),
        expect: [
          RegistrationFormState.initial(),
          RegistrationFormState.initial().copyWith(
            user: User.empty().copyWith(
              imageFileOption: some(imageFile),
            ),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the name",
        build: () {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => none());
          return getIt<RegistrationFormBloc>();
        },
        act: (bloc) async {
          bloc.add(const RegistrationFormEvent.initialized());
          bloc.add(const RegistrationFormEvent.nameChanged(name));
        },
        verify: (_) async => verify(getLoggedInUser.call(any)),
        expect: [
          RegistrationFormState.initial(),
          RegistrationFormState.initial().copyWith(
            user: User.empty().copyWith(
              name: Name(name),
            ),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the username",
        build: () {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => none());
          return getIt<RegistrationFormBloc>();
        },
        act: (bloc) async {
          bloc.add(const RegistrationFormEvent.initialized());
          bloc.add(const RegistrationFormEvent.usernameChanged(username));
        },
        verify: (_) async => verify(getLoggedInUser.call(any)),
        expect: [
          RegistrationFormState.initial(),
          RegistrationFormState.initial().copyWith(
            user: User.empty().copyWith(
              username: Name(username),
            ),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the password",
        build: () {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => none());
          return getIt<RegistrationFormBloc>();
        },
        act: (bloc) async {
          bloc.add(const RegistrationFormEvent.initialized());
          bloc.add(const RegistrationFormEvent.passwordChanged(password));
        },
        verify: (_) async => verify(getLoggedInUser.call(any)),
        expect: [
          RegistrationFormState.initial(),
          RegistrationFormState.initial().copyWith(
            user: User.empty().copyWith(
              password: Password(password),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: "",
            ),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the passwordConfirmation",
        build: () {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => none());
          return getIt<RegistrationFormBloc>();
        },
        act: (bloc) async {
          bloc.add(const RegistrationFormEvent.initialized());
          bloc.add(const RegistrationFormEvent.passwordChanged(password));
          bloc.add(const RegistrationFormEvent.passwordConfirmationChanged(password));
        },
        verify: (_) async => verify(getLoggedInUser.call(any)),
        expect: [
          RegistrationFormState.initial(),
          RegistrationFormState.initial().copyWith(
            user: User.empty().copyWith(
              password: Password(password),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: "",
            ),
          ),
          RegistrationFormState.initial().copyWith(
            user: User.empty().copyWith(
              password: Password(password),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
            passwordToCompare: password,
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the email",
        build: () {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => none());
          return getIt<RegistrationFormBloc>();
        },
        act: (bloc) async {
          bloc.add(const RegistrationFormEvent.initialized());
          bloc.add(const RegistrationFormEvent.emailAddressChanged(emailAddress));
        },
        verify: (_) async => verify(getLoggedInUser.call(any)),
        expect: [
          RegistrationFormState.initial(),
          RegistrationFormState.initial().copyWith(
            user: User.empty().copyWith(
              email: EmailAddress(emailAddress),
            ),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the birthday",
        build: () {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => none());
          return getIt<RegistrationFormBloc>();
        },
        act: (bloc) async {
          bloc.add(const RegistrationFormEvent.initialized());
          bloc.add(RegistrationFormEvent.birthdayChanged(birthday));
        },
        verify: (_) async => verify(getLoggedInUser.call(any)),
        expect: [
          RegistrationFormState.initial(),
          RegistrationFormState.initial().copyWith(
            user: User.empty().copyWith(
              birthday: PastDate(birthday),
            ),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the description",
        build: () {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => none());
          return getIt<RegistrationFormBloc>();
        },
        act: (bloc) async {
          bloc.add(const RegistrationFormEvent.initialized());
          bloc.add(const RegistrationFormEvent.descriptionChanged(description));
        },
        verify: (_) async => verify(getLoggedInUser.call(any)),
        expect: [
          RegistrationFormState.initial(),
          RegistrationFormState.initial().copyWith(
            user: User.empty().copyWith(
              description: EntityDescription(description),
            ),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the interests",
        build: () {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => none());
          return getIt<RegistrationFormBloc>();
        },
        act: (bloc) async {
          bloc.add(const RegistrationFormEvent.initialized());
          bloc.add(RegistrationFormEvent.interestsChanged(interests));
        },
        verify: (_) async => verify(getLoggedInUser.call(any)),
        expect: [
          RegistrationFormState.initial(),
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
        build: () {
          when(register.call(any)).thenAnswer((_) async => right(unit));
          when(getLoggedInUser.call(any)).thenAnswer((_) async => none());
          return getIt<RegistrationFormBloc>();
        },
        act: (bloc) async {
          bloc.add(const RegistrationFormEvent.initialized());
          bloc.add(const RegistrationFormEvent.nameChanged(name));
          bloc.add(const RegistrationFormEvent.usernameChanged(username));
          bloc.add(const RegistrationFormEvent.passwordChanged(password));
          bloc.add(const RegistrationFormEvent.passwordConfirmationChanged(password));
          bloc.add(const RegistrationFormEvent.emailAddressChanged(emailAddress));
          bloc.add(RegistrationFormEvent.birthdayChanged(birthday));
          bloc.add(const RegistrationFormEvent.descriptionChanged(description));
          bloc.add(RegistrationFormEvent.interestsChanged(interests));
          bloc.add(RegistrationFormEvent.imageChanged(imageFile));
          bloc.add(const RegistrationFormEvent.tappedEULA());
          bloc.add(const RegistrationFormEvent.submitted());
        },
        verify: (_) async {
          verify(getLoggedInUser.call(any));
          verify(register.call(any));
        },
        expect: [
          RegistrationFormState.initial(),
          RegistrationFormState.initial().copyWith(
            user: User.empty().copyWith(
              name: Name(name),
            ),
          ),
          RegistrationFormState.initial().copyWith(
            user: User.empty().copyWith(
              name: Name(name),
              username: Name(username),
            ),
          ),
          RegistrationFormState.initial().copyWith(
            user: User.empty().copyWith(
              name: Name(name),
              username: Name(username),
              password: Password(password),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: "",
            ),
          ),
          RegistrationFormState.initial().copyWith(
            user: User.empty().copyWith(
              name: Name(name),
              username: Name(username),
              password: Password(password),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
            passwordToCompare: password,
          ),
          RegistrationFormState.initial().copyWith(
            user: User.empty().copyWith(
              name: Name(name),
              username: Name(username),
              password: Password(password),
              email: EmailAddress(emailAddress),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
            passwordToCompare: password,
          ),
          RegistrationFormState.initial().copyWith(
            user: User.empty().copyWith(
              name: Name(name),
              username: Name(username),
              password: Password(password),
              email: EmailAddress(emailAddress),
              birthday: PastDate(birthday),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
            passwordToCompare: password,
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
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
            passwordToCompare: password,
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
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
            passwordToCompare: password,
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
              imageFileOption: some(imageFile),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
            passwordToCompare: password,
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
              imageFileOption: some(imageFile),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
            passwordToCompare: password,
            acceptedEULA: true,
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
              imageFileOption: some(imageFile),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
            passwordToCompare: password,
            acceptedEULA: true,
            isSubmitting: true,
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
              imageFileOption: some(imageFile),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
            passwordToCompare: password,
            acceptedEULA: true,
            showErrorMessages: true,
            failureOrSuccessOption: some(right(unit)),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitSuccess} when submitting with a third party User",
        build: () {
          when(register.call(any)).thenAnswer((_) async => right(unit));
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(thirdPartyUser));
          return getIt<RegistrationFormBloc>();
        },
        act: (bloc) async {
          bloc.add(const RegistrationFormEvent.initialized());
          bloc.add(const RegistrationFormEvent.nameChanged(name));
          bloc.add(const RegistrationFormEvent.usernameChanged(username));
          bloc.add(RegistrationFormEvent.birthdayChanged(birthday));
          bloc.add(const RegistrationFormEvent.descriptionChanged(description));
          bloc.add(RegistrationFormEvent.interestsChanged(interests));
          bloc.add(const RegistrationFormEvent.tappedEULA());
          bloc.add(const RegistrationFormEvent.submitted());
        },
        verify: (_) async {
          verify(getLoggedInUser.call(any));
          verify(register.call(any));
        },
        expect: [
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser,
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
          ),
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser.copyWith(
              name: Name(name),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
          ),
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser.copyWith(
              name: Name(name),
              username: Name(username),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
          ),
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser.copyWith(
              name: Name(name),
              username: Name(username),
              birthday: PastDate(birthday),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
          ),
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser.copyWith(
              name: Name(name),
              username: Name(username),
              birthday: PastDate(birthday),
              description: EntityDescription(description),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
          ),
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser.copyWith(
              name: Name(name),
              username: Name(username),
              birthday: PastDate(birthday),
              description: EntityDescription(description),
              interests: interests,
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
          ),
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser.copyWith(
              name: Name(name),
              username: Name(username),
              birthday: PastDate(birthday),
              description: EntityDescription(description),
              interests: interests,
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
            acceptedEULA: true,
          ),
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser.copyWith(
              name: Name(name),
              username: Name(username),
              email: EmailAddress(emailAddress),
              birthday: PastDate(birthday),
              description: EntityDescription(description),
              interests: interests,
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
            isSubmitting: true,
            acceptedEULA: true,
          ),
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser.copyWith(
              name: Name(name),
              username: Name(username),
              birthday: PastDate(birthday),
              description: EntityDescription(description),
              interests: interests,
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
            acceptedEULA: true,
            showErrorMessages: true,
            failureOrSuccessOption: some(right(unit)),
          ),
        ],
      );
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {
      blocTest(
        "Registering shouldn't be possible without accepting the EULA",
        build: () {
          when(register.call(any)).thenAnswer((_) async => right(unit));
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(thirdPartyUser));
          return getIt<RegistrationFormBloc>();
        },
        act: (bloc) async {
          bloc.add(const RegistrationFormEvent.initialized());
          bloc.add(const RegistrationFormEvent.nameChanged(name));
          bloc.add(const RegistrationFormEvent.usernameChanged(username));
          bloc.add(RegistrationFormEvent.birthdayChanged(birthday));
          bloc.add(const RegistrationFormEvent.descriptionChanged(description));
          bloc.add(RegistrationFormEvent.interestsChanged(interests));
          bloc.add(const RegistrationFormEvent.submitted());
        },
        verify: (_) async {
          verify(getLoggedInUser.call(any));
          verifyNever(register.call(any));
        },
        expect: [
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser,
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
          ),
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser.copyWith(
              name: Name(name),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
          ),
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser.copyWith(
              name: Name(name),
              username: Name(username),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
          ),
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser.copyWith(
              name: Name(name),
              username: Name(username),
              birthday: PastDate(birthday),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
          ),
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser.copyWith(
              name: Name(name),
              username: Name(username),
              birthday: PastDate(birthday),
              description: EntityDescription(description),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
          ),
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser.copyWith(
              name: Name(name),
              username: Name(username),
              birthday: PastDate(birthday),
              description: EntityDescription(description),
              interests: interests,
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
          ),
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser.copyWith(
              name: Name(name),
              username: Name(username),
              email: EmailAddress(emailAddress),
              birthday: PastDate(birthday),
              description: EntityDescription(description),
              interests: interests,
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
            isSubmitting: true,
          ),
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser.copyWith(
              name: Name(name),
              username: Name(username),
              birthday: PastDate(birthday),
              description: EntityDescription(description),
              interests: interests,
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
            showErrorMessages: true,
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitFailure} when submitting with a third party User",
        build: () {
          when(register.call(any)).thenAnswer((_) async => left(failure));
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(thirdPartyUser));
          return getIt<RegistrationFormBloc>();
        },
        act: (bloc) async {
          bloc.add(const RegistrationFormEvent.initialized());
          bloc.add(const RegistrationFormEvent.nameChanged(name));
          bloc.add(const RegistrationFormEvent.usernameChanged(username));
          bloc.add(RegistrationFormEvent.birthdayChanged(birthday));
          bloc.add(const RegistrationFormEvent.descriptionChanged(description));
          bloc.add(RegistrationFormEvent.interestsChanged(interests));
          bloc.add(const RegistrationFormEvent.tappedEULA());
          bloc.add(const RegistrationFormEvent.submitted());
        },
        verify: (_) async {
          verify(getLoggedInUser.call(any));
          verify(register.call(any));
        },
        expect: [
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser,
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
          ),
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser.copyWith(
              name: Name(name),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
          ),
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser.copyWith(
              name: Name(name),
              username: Name(username),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
          ),
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser.copyWith(
              name: Name(name),
              username: Name(username),
              birthday: PastDate(birthday),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
          ),
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser.copyWith(
              name: Name(name),
              username: Name(username),
              birthday: PastDate(birthday),
              description: EntityDescription(description),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
          ),
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser.copyWith(
              name: Name(name),
              username: Name(username),
              birthday: PastDate(birthday),
              description: EntityDescription(description),
              interests: interests,
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
          ),
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser.copyWith(
              name: Name(name),
              username: Name(username),
              birthday: PastDate(birthday),
              description: EntityDescription(description),
              interests: interests,
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
            acceptedEULA: true,
          ),
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser.copyWith(
              name: Name(name),
              username: Name(username),
              email: EmailAddress(emailAddress),
              birthday: PastDate(birthday),
              description: EntityDescription(description),
              interests: interests,
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
            acceptedEULA: true,
            isSubmitting: true,
          ),
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser.copyWith(
              name: Name(name),
              username: Name(username),
              birthday: PastDate(birthday),
              description: EntityDescription(description),
              interests: interests,
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
            acceptedEULA: true,
            showErrorMessages: true,
            failureOrSuccessOption: some(left(failure)),
          ),
        ],
      );
      blocTest(
        "Shouldn't call register if the User has invalid fields",
        build: () {
          when(register.call(any)).thenAnswer((_) async => right(unit));
          when(getLoggedInUser.call(any)).thenAnswer((_) async => none());
          return getIt<RegistrationFormBloc>();
        },
        act: (bloc) async {
          bloc.add(const RegistrationFormEvent.initialized());
          bloc.add(const RegistrationFormEvent.nameChanged(name));
          bloc.add(const RegistrationFormEvent.usernameChanged(username));
          bloc.add(const RegistrationFormEvent.passwordChanged(password));
          bloc.add(const RegistrationFormEvent.passwordConfirmationChanged(differentPassword));
          bloc.add(const RegistrationFormEvent.emailAddressChanged(emailAddress));
          bloc.add(RegistrationFormEvent.birthdayChanged(birthday));
          bloc.add(const RegistrationFormEvent.descriptionChanged(description));
          bloc.add(RegistrationFormEvent.interestsChanged(interests));
          bloc.add(RegistrationFormEvent.imageChanged(imageFile));
          bloc.add(const RegistrationFormEvent.tappedEULA());
          bloc.add(const RegistrationFormEvent.submitted());
        },
        verify: (_) async {
          verify(getLoggedInUser.call(any));
          verifyNoMoreInteractions(register);
        },
        expect: [
          RegistrationFormState.initial(),
          RegistrationFormState.initial().copyWith(
            user: User.empty().copyWith(
              name: Name(name),
            ),
          ),
          RegistrationFormState.initial().copyWith(
            user: User.empty().copyWith(
              name: Name(name),
              username: Name(username),
            ),
          ),
          RegistrationFormState.initial().copyWith(
            user: User.empty().copyWith(
              name: Name(name),
              username: Name(username),
              password: Password(password),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: "",
            ),
          ),
          RegistrationFormState.initial().copyWith(
            user: User.empty().copyWith(
              name: Name(name),
              username: Name(username),
              password: Password(password),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: differentPassword,
            ),
            passwordToCompare: differentPassword,
          ),
          RegistrationFormState.initial().copyWith(
            user: User.empty().copyWith(
              name: Name(name),
              username: Name(username),
              password: Password(password),
              email: EmailAddress(emailAddress),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: differentPassword,
            ),
            passwordToCompare: differentPassword,
          ),
          RegistrationFormState.initial().copyWith(
            user: User.empty().copyWith(
              name: Name(name),
              username: Name(username),
              password: Password(password),
              email: EmailAddress(emailAddress),
              birthday: PastDate(birthday),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: differentPassword,
            ),
            passwordToCompare: differentPassword,
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
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: differentPassword,
            ),
            passwordToCompare: differentPassword,
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
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: differentPassword,
            ),
            passwordToCompare: differentPassword,
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
              imageFileOption: some(imageFile),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: differentPassword,
            ),
            passwordToCompare: differentPassword,
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
              imageFileOption: some(imageFile),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: differentPassword,
            ),
            passwordToCompare: differentPassword,
            acceptedEULA: true,
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
              imageFileOption: some(imageFile),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: differentPassword,
            ),
            passwordToCompare: differentPassword,
            acceptedEULA: true,
            isSubmitting: true,
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
              imageFileOption: some(imageFile),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: differentPassword,
            ),
            passwordToCompare: differentPassword,
            acceptedEULA: true,
            showErrorMessages: true,
          ),
        ],
      );
      blocTest(
        TestDescription.shouldResetOption,
        build: () {
          when(register.call(any)).thenAnswer((_) async => left(failure));
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(thirdPartyUser));
          return getIt<RegistrationFormBloc>();
        },
        act: (bloc) async {
          bloc.add(const RegistrationFormEvent.initialized());
          bloc.add(const RegistrationFormEvent.nameChanged(name));
          bloc.add(const RegistrationFormEvent.usernameChanged(username));
          bloc.add(RegistrationFormEvent.birthdayChanged(birthday));
          bloc.add(const RegistrationFormEvent.descriptionChanged(description));
          bloc.add(RegistrationFormEvent.interestsChanged(interests));
          bloc.add(const RegistrationFormEvent.tappedEULA());
          bloc.add(const RegistrationFormEvent.submitted());
          bloc.add(const RegistrationFormEvent.nameChanged(name));
        },
        verify: (_) async {
          verify(getLoggedInUser.call(any));
          verify(register.call(any));
        },
        expect: [
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser,
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
          ),
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser.copyWith(
              name: Name(name),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
          ),
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser.copyWith(
              name: Name(name),
              username: Name(username),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
          ),
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser.copyWith(
              name: Name(name),
              username: Name(username),
              birthday: PastDate(birthday),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
          ),
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser.copyWith(
              name: Name(name),
              username: Name(username),
              birthday: PastDate(birthday),
              description: EntityDescription(description),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
          ),
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser.copyWith(
              name: Name(name),
              username: Name(username),
              birthday: PastDate(birthday),
              description: EntityDescription(description),
              interests: interests,
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
          ),
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser.copyWith(
              name: Name(name),
              username: Name(username),
              birthday: PastDate(birthday),
              description: EntityDescription(description),
              interests: interests,
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
            acceptedEULA: true,
          ),
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser.copyWith(
              name: Name(name),
              username: Name(username),
              password: Password(password),
              email: EmailAddress(emailAddress),
              birthday: PastDate(birthday),
              description: EntityDescription(description),
              interests: interests,
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
            acceptedEULA: true,
            isSubmitting: true,
          ),
          RegistrationFormState.initial().copyWith(
            user: thirdPartyUser.copyWith(
              name: Name(name),
              username: Name(username),
              birthday: PastDate(birthday),
              description: EntityDescription(description),
              interests: interests,
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
            acceptedEULA: true,
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
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
            acceptedEULA: true,
            showErrorMessages: true,
          ),
        ],
      );
    },
  );
}
