import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/application/profile/profile_editing_form/profile_editing_form_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/validation/objects/email_address.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';
import 'package:worldon/domain/core/validation/objects/password_confirmator.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/profile/use_case/edit_user.dart';
import 'package:worldon/injection.dart';

import '../../../domain/core/methods/get_valid_user.dart';
import '../../../test_descriptions.dart';

void main() {
  EditUser editUser;
  GetLoggedInUser getLoggedInUser;
  setUpAll(
      () {
      configureDependencies(injectable.Environment.test);
      editUser = getIt<EditUser>();
      getLoggedInUser = getIt<GetLoggedInUser>();
    },
  );
  const name = "test";
  const username = "test";
  const password = "test*1234";
  const emailAddress = "testing@test.test";
  final birthday = DateTime.now().subtract(const Duration(days: 100000));
  const description = "For testing";
  final interests = {
    Tag.empty().copyWith(
      name: Name("Test"),
      creator: getValidUser(),
    ),
  };
  final imageFile = File("assets/non_existing_person_placeholder.jpg");
  final user = getValidUser();
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<ProfileEditingFormBloc>(),
    expect: [],
  );
  blocTest(
    TestDescription.shouldEmitInitialized,
    build: () {
      when(getLoggedInUser.call(any)).thenAnswer((_) async => some(user));
      return getIt<ProfileEditingFormBloc>();
    },
    act: (bloc) async => bloc.add(const ProfileEditingFormEvent.initialized()),
    verify: (_) async {
      verify(getLoggedInUser.call(any));
      verifyNoMoreInteractions(getLoggedInUser);
    },
    expect: [
      ProfileEditingFormState.initial().copyWith(
        user: user,
        passwordConfirmator: PasswordConfirmator(
          password: password,
          confirmation: password,
        ),
      ),
    ],
  );
  group(
    "${TestDescription.groupOnSuccess} updating the user fields",
      () {
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the imageFile",
        build: () {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(user));
          return getIt<ProfileEditingFormBloc>();
        },
        act: (bloc) async {
          bloc.add(const ProfileEditingFormEvent.initialized());
          bloc.add(ProfileEditingFormEvent.imageChanged(imageFile));
        },
        verify: (_) async => verify(getLoggedInUser.call(any)),
        expect: [
          ProfileEditingFormState.initial().copyWith(
            user: user,
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              imageFileOption: some(imageFile),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the name",
        build: () {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(user));
          return getIt<ProfileEditingFormBloc>();
        },
        act: (bloc) async {
          bloc.add(const ProfileEditingFormEvent.initialized());
          bloc.add(const ProfileEditingFormEvent.nameChanged(name));
        },
        verify: (_) async => verify(getLoggedInUser.call(any)),
        expect: [
          ProfileEditingFormState.initial().copyWith(
            user: user,
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              name: Name(name),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the username",
        build: () {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(user));
          return getIt<ProfileEditingFormBloc>();
        },
        act: (bloc) async {
          bloc.add(const ProfileEditingFormEvent.initialized());
          bloc.add(const ProfileEditingFormEvent.usernameChanged(username));
        },
        verify: (_) async => verify(getLoggedInUser.call(any)),
        expect: [
          ProfileEditingFormState.initial().copyWith(
            user: user,
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              username: Name(username),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the password",
        build: () {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(user));
          return getIt<ProfileEditingFormBloc>();
        },
        act: (bloc) async {
          bloc.add(const ProfileEditingFormEvent.initialized());
          bloc.add(const ProfileEditingFormEvent.passwordChanged(password));
        },
        verify: (_) async => verify(getLoggedInUser.call(any)),
        expect: [
          ProfileEditingFormState.initial().copyWith(
            user: user,
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              password: Password(password),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the password confirmation",
        build: () {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(user));
          return getIt<ProfileEditingFormBloc>();
        },
        act: (bloc) async {
          bloc.add(const ProfileEditingFormEvent.initialized());
          bloc.add(const ProfileEditingFormEvent.passwordChanged(password));
        },
        verify: (_) async => verify(getLoggedInUser.call(any)),
        expect: [
          ProfileEditingFormState.initial().copyWith(
            user: user,
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
          ),
          ProfileEditingFormState.initial().copyWith(
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
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(user));
          return getIt<ProfileEditingFormBloc>();
        },
        act: (bloc) async {
          bloc.add(const ProfileEditingFormEvent.initialized());
          bloc.add(const ProfileEditingFormEvent.emailAddressChanged(emailAddress));
        },
        verify: (_) async => verify(getLoggedInUser.call(any)),
        expect: [
          ProfileEditingFormState.initial().copyWith(
            user: user,
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              email: EmailAddress(emailAddress),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the birthday",
        build: () {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(user));
          return getIt<ProfileEditingFormBloc>();
        },
        act: (bloc) async {
          bloc.add(const ProfileEditingFormEvent.initialized());
          bloc.add(ProfileEditingFormEvent.birthdayChanged(birthday));
        },
        verify: (_) async => verify(getLoggedInUser.call(any)),
        expect: [
          ProfileEditingFormState.initial().copyWith(
            user: user,
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              birthday: PastDate(birthday),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the description",
        build: () {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(user));
          return getIt<ProfileEditingFormBloc>();
        },
        act: (bloc) async {
          bloc.add(const ProfileEditingFormEvent.initialized());
          bloc.add(const ProfileEditingFormEvent.descriptionChanged(description));
        },
        verify: (_) async => verify(getLoggedInUser.call(any)),
        expect: [
          ProfileEditingFormState.initial().copyWith(
            user: user,
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              description: EntityDescription(description),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the interests",
        build: () {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(user));
          return getIt<ProfileEditingFormBloc>();
        },
        act: (bloc) async {
          bloc.add(const ProfileEditingFormEvent.initialized());
          bloc.add(ProfileEditingFormEvent.interestsChanged(interests));
        },
        verify: (_) async => verify(getLoggedInUser.call(any)),
        expect: [
          ProfileEditingFormState.initial().copyWith(
            user: user,
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              interests: interests,
            ),
            passwordConfirmator: PasswordConfirmator(
              password: password,
              confirmation: password,
            ),
          ),
        ],
      );
    },
  );
  blocTest(
    TestDescription.shouldEmitSuccess,
    build: () {
      when(editUser.call(any)).thenAnswer((_) async => right(unit));
      when(getLoggedInUser.call(any)).thenAnswer((_) async => some(user));
      return getIt<ProfileEditingFormBloc>();
    },
    act: (bloc) async {
      bloc.add(const ProfileEditingFormEvent.initialized());
      bloc.add(const ProfileEditingFormEvent.nameChanged(name));
      bloc.add(const ProfileEditingFormEvent.usernameChanged(username));
      bloc.add(const ProfileEditingFormEvent.passwordChanged(password));
      bloc.add(const ProfileEditingFormEvent.emailAddressChanged(emailAddress));
      bloc.add(ProfileEditingFormEvent.birthdayChanged(birthday));
      bloc.add(const ProfileEditingFormEvent.descriptionChanged(description));
      bloc.add(ProfileEditingFormEvent.interestsChanged(interests));
      bloc.add(ProfileEditingFormEvent.imageChanged(imageFile));
      bloc.add(const ProfileEditingFormEvent.submitted());
    },
    verify: (_) async {
      verify(getLoggedInUser.call(any));
      verify(editUser.call(any));
    },
    expect: [
      ProfileEditingFormState.initial().copyWith(
        user: user,
      ),
      ProfileEditingFormState.initial().copyWith(
        user: user.copyWith(
          name: Name(name),
        ),
        failureOrSuccessOption: none(),
      ),
      ProfileEditingFormState.initial().copyWith(
        user: user.copyWith(
          name: Name(name),
          username: Name(username),
        ),
        failureOrSuccessOption: none(),
      ),
      ProfileEditingFormState.initial().copyWith(
        user: user.copyWith(
          name: Name(name),
          username: Name(username),
          password: Password(password),
        ),
        failureOrSuccessOption: none(),
      ),
      ProfileEditingFormState.initial().copyWith(
        user: user.copyWith(
          name: Name(name),
          username: Name(username),
          password: Password(password),
          email: EmailAddress(emailAddress),
        ),
        failureOrSuccessOption: none(),
      ),
      ProfileEditingFormState.initial().copyWith(
        user: user.copyWith(
          name: Name(name),
          username: Name(username),
          password: Password(password),
          email: EmailAddress(emailAddress),
          birthday: PastDate(birthday),
        ),
        failureOrSuccessOption: none(),
      ),
      ProfileEditingFormState.initial().copyWith(
        user: user.copyWith(
          name: Name(name),
          username: Name(username),
          birthday: PastDate(birthday),
          password: Password(password),
          email: EmailAddress(emailAddress),
          description: EntityDescription(description),
        ),
        failureOrSuccessOption: none(),
      ),
      ProfileEditingFormState.initial().copyWith(
        user: user.copyWith(
          name: Name(name),
          username: Name(username),
          birthday: PastDate(birthday),
          password: Password(password),
          email: EmailAddress(emailAddress),
          description: EntityDescription(description),
          interests: interests,
        ),
        failureOrSuccessOption: none(),
      ),
      ProfileEditingFormState.initial().copyWith(
        user: user.copyWith(
          name: Name(name),
          username: Name(username),
          birthday: PastDate(birthday),
          password: Password(password),
          email: EmailAddress(emailAddress),
          description: EntityDescription(description),
          interests: interests,
          imageFileOption: some(imageFile),
        ),
        failureOrSuccessOption: none(),
      ),
      ProfileEditingFormState.initial().copyWith(
        user: user.copyWith(
          name: Name(name),
          username: Name(username),
          birthday: PastDate(birthday),
          password: Password(password),
          email: EmailAddress(emailAddress),
          description: EntityDescription(description),
          interests: interests,
          imageFileOption: some(imageFile),
        ),
        isSubmitting: true,
        failureOrSuccessOption: none(),
      ),
      ProfileEditingFormState.initial().copyWith(
        user: user.copyWith(
          name: Name(name),
          username: Name(username),
          birthday: PastDate(birthday),
          password: Password(password),
          email: EmailAddress(emailAddress),
          description: EntityDescription(description),
          interests: interests,
          imageFileOption: some(imageFile),
        ),
        isSubmitting: false,
        showErrorMessages: true,
        failureOrSuccessOption: some(right(unit)),
      ),
    ],
  );
  group(
    TestDescription.groupOnFailure,
      () {
      blocTest(
        "${TestDescription.shouldEmitFailure} when submitting",
        build: () {
          when(editUser.call(any)).thenAnswer((_) async => left(failure));
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(user));
          return getIt<ProfileEditingFormBloc>();
        },
        act: (bloc) async {
          bloc.add(const ProfileEditingFormEvent.initialized());
          bloc.add(const ProfileEditingFormEvent.nameChanged(name));
          bloc.add(const ProfileEditingFormEvent.usernameChanged(username));
          bloc.add(const ProfileEditingFormEvent.passwordChanged(password));
          bloc.add(const ProfileEditingFormEvent.emailAddressChanged(emailAddress));
          bloc.add(ProfileEditingFormEvent.birthdayChanged(birthday));
          bloc.add(const ProfileEditingFormEvent.descriptionChanged(description));
          bloc.add(ProfileEditingFormEvent.interestsChanged(interests));
          bloc.add(ProfileEditingFormEvent.imageChanged(imageFile));
          bloc.add(const ProfileEditingFormEvent.submitted());
        },
        verify: (_) async {
          verify(getLoggedInUser.call(any));
          verify(editUser.call(any));
        },
        expect: [
          ProfileEditingFormState.initial().copyWith(
            user: user,
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              name: Name(name),
            ),
            failureOrSuccessOption: none(),
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              name: Name(name),
              username: Name(username),
            ),
            failureOrSuccessOption: none(),
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              name: Name(name),
              username: Name(username),
              password: Password(password),
            ),
            failureOrSuccessOption: none(),
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              name: Name(name),
              username: Name(username),
              password: Password(password),
              email: EmailAddress(emailAddress),
            ),
            failureOrSuccessOption: none(),
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              name: Name(name),
              username: Name(username),
              password: Password(password),
              email: EmailAddress(emailAddress),
              birthday: PastDate(birthday),
            ),
            failureOrSuccessOption: none(),
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              name: Name(name),
              username: Name(username),
              birthday: PastDate(birthday),
              password: Password(password),
              email: EmailAddress(emailAddress),
              description: EntityDescription(description),
            ),
            failureOrSuccessOption: none(),
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              name: Name(name),
              username: Name(username),
              birthday: PastDate(birthday),
              password: Password(password),
              email: EmailAddress(emailAddress),
              description: EntityDescription(description),
              interests: interests,
            ),
            failureOrSuccessOption: none(),
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              name: Name(name),
              username: Name(username),
              birthday: PastDate(birthday),
              password: Password(password),
              email: EmailAddress(emailAddress),
              description: EntityDescription(description),
              interests: interests,
              imageFileOption: some(imageFile),
            ),
            failureOrSuccessOption: none(),
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              name: Name(name),
              username: Name(username),
              birthday: PastDate(birthday),
              password: Password(password),
              email: EmailAddress(emailAddress),
              description: EntityDescription(description),
              interests: interests,
              imageFileOption: some(imageFile),
            ),
            isSubmitting: true,
            failureOrSuccessOption: none(),
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              name: Name(name),
              username: Name(username),
              password: Password(password),
              email: EmailAddress(emailAddress),
              birthday: PastDate(birthday),
              description: EntityDescription(description),
              interests: interests,
              imageFileOption: some(imageFile),
            ),
            isSubmitting: false,
            showErrorMessages: true,
            failureOrSuccessOption: some(left(failure)),
          ),
        ],
      );
      blocTest(
        TestDescription.shouldResetOption,
        build: () {
          when(editUser.call(any)).thenAnswer((_) async => left(failure));
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(user));
          return getIt<ProfileEditingFormBloc>();
        },
        act: (bloc) async {
          bloc.add(const ProfileEditingFormEvent.initialized());
          bloc.add(const ProfileEditingFormEvent.nameChanged(name));
          bloc.add(const ProfileEditingFormEvent.usernameChanged(username));
          bloc.add(const ProfileEditingFormEvent.passwordChanged(password));
          bloc.add(const ProfileEditingFormEvent.emailAddressChanged(emailAddress));
          bloc.add(ProfileEditingFormEvent.birthdayChanged(birthday));
          bloc.add(const ProfileEditingFormEvent.descriptionChanged(description));
          bloc.add(ProfileEditingFormEvent.interestsChanged(interests));
          bloc.add(ProfileEditingFormEvent.imageChanged(imageFile));
          bloc.add(const ProfileEditingFormEvent.submitted());
          bloc.add(const ProfileEditingFormEvent.nameChanged(name));
        },
        verify: (_) async {
          verify(getLoggedInUser.call(any));
          verify(editUser.call(any));
        },
        expect: [
          ProfileEditingFormState.initial().copyWith(
            user: user,
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              name: Name(name),
            ),
            failureOrSuccessOption: none(),
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              name: Name(name),
              username: Name(username),
            ),
            failureOrSuccessOption: none(),
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              name: Name(name),
              username: Name(username),
              password: Password(password),
            ),
            failureOrSuccessOption: none(),
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              name: Name(name),
              username: Name(username),
              password: Password(password),
              email: EmailAddress(emailAddress),
            ),
            failureOrSuccessOption: none(),
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              name: Name(name),
              username: Name(username),
              password: Password(password),
              email: EmailAddress(emailAddress),
              birthday: PastDate(birthday),
            ),
            failureOrSuccessOption: none(),
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              name: Name(name),
              username: Name(username),
              birthday: PastDate(birthday),
              password: Password(password),
              email: EmailAddress(emailAddress),
              description: EntityDescription(description),
            ),
            failureOrSuccessOption: none(),
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              name: Name(name),
              username: Name(username),
              birthday: PastDate(birthday),
              password: Password(password),
              email: EmailAddress(emailAddress),
              description: EntityDescription(description),
              interests: interests,
            ),
            failureOrSuccessOption: none(),
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              name: Name(name),
              username: Name(username),
              birthday: PastDate(birthday),
              password: Password(password),
              email: EmailAddress(emailAddress),
              description: EntityDescription(description),
              interests: interests,
              imageFileOption: some(imageFile),
            ),
            failureOrSuccessOption: none(),
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              name: Name(name),
              username: Name(username),
              birthday: PastDate(birthday),
              password: Password(password),
              email: EmailAddress(emailAddress),
              description: EntityDescription(description),
              interests: interests,
              imageFileOption: some(imageFile),
            ),
            isSubmitting: true,
            failureOrSuccessOption: none(),
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              name: Name(name),
              username: Name(username),
              password: Password(password),
              email: EmailAddress(emailAddress),
              birthday: PastDate(birthday),
              description: EntityDescription(description),
              interests: interests,
              imageFileOption: some(imageFile),
            ),
            isSubmitting: false,
            showErrorMessages: true,
            failureOrSuccessOption: some(left(failure)),
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              name: Name(name),
              username: Name(username),
              password: Password(password),
              email: EmailAddress(emailAddress),
              birthday: PastDate(birthday),
              description: EntityDescription(description),
              interests: interests,
              imageFileOption: some(imageFile),
            ),
            showErrorMessages: true,
            failureOrSuccessOption: none(),
          ),
        ],
      );
    },
  );
}
