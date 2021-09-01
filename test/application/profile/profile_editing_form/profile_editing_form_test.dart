import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/application/profile/profile_editing_form/profile_editing_form_bloc.dart';
import 'package:worldon/core/assets.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_tag.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/domain/core/validation/objects/email_address.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';
import 'package:worldon/domain/core/validation/objects/password_confirmator.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/profile/use_case/edit_user.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  EditUser editUser;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      editUser = getIt<EditUser>();
    },
  );
  final user = getValidUser();
  const name = "Test";
  const nameChange = "testing";
  const username = "test";
  final originalPassword = user.password.getOrCrash();
  const passwordChange = "4321*dcba";
  const passwordConfirmation = "test*1234";
  const emailAddress = "testing@test.test";
  final birthday = DateTime.now().subtract(const Duration(days: 100000));
  const description = "For testing";
  final validTag = getValidTag();
  final interests = {
    validTag,
    validTag.copyWith(id: UniqueId()),
  };
  final interestIds = interests.map((_tag) => _tag.id).toSet();
  final imageFile = File(Assets.userPlaceholder);
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<ProfileEditingFormBloc>(),
    expect: [],
  );
  blocTest(
    TestDescription.shouldEmitInitialized,
    build: () => getIt<ProfileEditingFormBloc>(),
    act: (bloc) async => bloc.add(ProfileEditingFormEvent.initialized(user)),
    expect: [
      ProfileEditingFormState.initial().copyWith(
        user: user,
        passwordConfirmator: PasswordConfirmator(
          password: user.password.getOrCrash(),
          confirmation: user.password.getOrCrash(),
        ),
        passwordToCompare: user.password.getOrCrash(),
      ),
    ],
  );
  group(
    "${TestDescription.groupOnSuccess} updating the user fields",
    () {
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the imageFile",
        build: () => getIt<ProfileEditingFormBloc>(),
        act: (bloc) async {
          bloc.add(ProfileEditingFormEvent.initialized(user));
          bloc.add(ProfileEditingFormEvent.imageChanged(imageFile));
        },
        expect: [
          ProfileEditingFormState.initial().copyWith(
            user: user,
            passwordConfirmator: PasswordConfirmator(
              password: originalPassword,
              confirmation: originalPassword,
            ),
            passwordToCompare: originalPassword,
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              imageFileOption: some(imageFile),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: originalPassword,
              confirmation: originalPassword,
            ),
            passwordToCompare: originalPassword,
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the name",
        build: () => getIt<ProfileEditingFormBloc>(),
        act: (bloc) async {
          bloc.add(ProfileEditingFormEvent.initialized(user));
          bloc.add(const ProfileEditingFormEvent.nameChanged(nameChange));
        },
        expect: [
          ProfileEditingFormState.initial().copyWith(
            user: user,
            passwordConfirmator: PasswordConfirmator(
              password: originalPassword,
              confirmation: originalPassword,
            ),
            passwordToCompare: originalPassword,
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              name: Name(nameChange),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: originalPassword,
              confirmation: originalPassword,
            ),
            passwordToCompare: originalPassword,
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the username",
        build: () => getIt<ProfileEditingFormBloc>(),
        act: (bloc) async {
          bloc.add(ProfileEditingFormEvent.initialized(user));
          bloc.add(const ProfileEditingFormEvent.usernameChanged(username));
        },
        expect: [
          ProfileEditingFormState.initial().copyWith(
            user: user,
            passwordConfirmator: PasswordConfirmator(
              password: originalPassword,
              confirmation: originalPassword,
            ),
            passwordToCompare: originalPassword,
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              username: Name(username),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: originalPassword,
              confirmation: originalPassword,
            ),
            passwordToCompare: originalPassword,
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the password",
        build: () => getIt<ProfileEditingFormBloc>(),
        act: (bloc) async {
          bloc.add(ProfileEditingFormEvent.initialized(user));
          bloc.add(const ProfileEditingFormEvent.passwordChanged(passwordChange));
        },
        expect: [
          ProfileEditingFormState.initial().copyWith(
            user: user,
            passwordConfirmator: PasswordConfirmator(
              password: originalPassword,
              confirmation: originalPassword,
            ),
            passwordToCompare: originalPassword,
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              password: Password(passwordChange),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: passwordChange,
              confirmation: originalPassword,
            ),
            passwordToCompare: originalPassword,
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the password confirmation",
        build: () => getIt<ProfileEditingFormBloc>(),
        act: (bloc) async {
          bloc.add(ProfileEditingFormEvent.initialized(user));
          bloc.add(const ProfileEditingFormEvent.passwordConfirmationChanged(passwordConfirmation));
        },
        expect: [
          ProfileEditingFormState.initial().copyWith(
            user: user,
            passwordConfirmator: PasswordConfirmator(
              password: originalPassword,
              confirmation: originalPassword,
            ),
            passwordToCompare: originalPassword,
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user,
            passwordConfirmator: PasswordConfirmator(
              password: originalPassword,
              confirmation: passwordConfirmation,
            ),
            passwordToCompare: passwordConfirmation,
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the email",
        build: () => getIt<ProfileEditingFormBloc>(),
        act: (bloc) async {
          bloc.add(ProfileEditingFormEvent.initialized(user));
          bloc.add(const ProfileEditingFormEvent.emailAddressChanged(emailAddress));
        },
        expect: [
          ProfileEditingFormState.initial().copyWith(
            user: user,
            passwordConfirmator: PasswordConfirmator(
              password: originalPassword,
              confirmation: originalPassword,
            ),
            passwordToCompare: originalPassword,
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              email: EmailAddress(emailAddress),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: originalPassword,
              confirmation: originalPassword,
            ),
            passwordToCompare: originalPassword,
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the birthday",
        build: () => getIt<ProfileEditingFormBloc>(),
        act: (bloc) async {
          bloc.add(ProfileEditingFormEvent.initialized(user));
          bloc.add(ProfileEditingFormEvent.birthdayChanged(birthday));
        },
        expect: [
          ProfileEditingFormState.initial().copyWith(
            user: user,
            passwordConfirmator: PasswordConfirmator(
              password: originalPassword,
              confirmation: originalPassword,
            ),
            passwordToCompare: originalPassword,
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              birthday: PastDate(birthday),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: originalPassword,
              confirmation: originalPassword,
            ),
            passwordToCompare: originalPassword,
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the description",
        build: () => getIt<ProfileEditingFormBloc>(),
        act: (bloc) async {
          bloc.add(ProfileEditingFormEvent.initialized(user));
          bloc.add(const ProfileEditingFormEvent.descriptionChanged(description));
        },
        expect: [
          ProfileEditingFormState.initial().copyWith(
            user: user,
            passwordConfirmator: PasswordConfirmator(
              password: originalPassword,
              confirmation: originalPassword,
            ),
            passwordToCompare: originalPassword,
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              description: EntityDescription(description),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: originalPassword,
              confirmation: originalPassword,
            ),
            passwordToCompare: originalPassword,
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the interests",
        build: () => getIt<ProfileEditingFormBloc>(),
        act: (bloc) async {
          bloc.add(ProfileEditingFormEvent.initialized(user));
          bloc.add(ProfileEditingFormEvent.interestsChanged(interests));
        },
        expect: [
          ProfileEditingFormState.initial().copyWith(
            user: user,
            passwordConfirmator: PasswordConfirmator(
              password: originalPassword,
              confirmation: originalPassword,
            ),
            passwordToCompare: originalPassword,
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              interestsIds: interestIds,
            ),
            passwordConfirmator: PasswordConfirmator(
              password: originalPassword,
              confirmation: originalPassword,
            ),
            passwordToCompare: originalPassword,
          ),
        ],
      );
    },
  );
  blocTest(
    TestDescription.shouldEmitSuccess,
    build: () {
      when(editUser.call(any)).thenAnswer((_) async => right(unit));
      return getIt<ProfileEditingFormBloc>();
    },
    act: (bloc) async {
      bloc.add(ProfileEditingFormEvent.initialized(user));
      bloc.add(const ProfileEditingFormEvent.nameChanged(nameChange));
      bloc.add(const ProfileEditingFormEvent.usernameChanged(username));
      bloc.add(ProfileEditingFormEvent.passwordChanged(originalPassword));
      bloc.add(const ProfileEditingFormEvent.emailAddressChanged(emailAddress));
      bloc.add(ProfileEditingFormEvent.birthdayChanged(birthday));
      bloc.add(const ProfileEditingFormEvent.descriptionChanged(description));
      bloc.add(ProfileEditingFormEvent.interestsChanged(interests));
      bloc.add(ProfileEditingFormEvent.imageChanged(imageFile));
      bloc.add(const ProfileEditingFormEvent.submitted());
    },
    verify: (_) async => verify(editUser.call(any)),
    expect: [
      ProfileEditingFormState.initial().copyWith(
        user: user,
        passwordConfirmator: PasswordConfirmator(
          password: originalPassword,
          confirmation: originalPassword,
        ),
        passwordToCompare: originalPassword,
      ),
      ProfileEditingFormState.initial().copyWith(
        user: user.copyWith(
          name: Name(nameChange),
        ),
        passwordConfirmator: PasswordConfirmator(
          password: originalPassword,
          confirmation: originalPassword,
        ),
        passwordToCompare: originalPassword,
      ),
      ProfileEditingFormState.initial().copyWith(
        user: user.copyWith(
          name: Name(nameChange),
          username: Name(username),
          password: Password(originalPassword),
        ),
        passwordConfirmator: PasswordConfirmator(
          password: originalPassword,
          confirmation: originalPassword,
        ),
        passwordToCompare: originalPassword,
      ),
      ProfileEditingFormState.initial().copyWith(
        user: user.copyWith(
          name: Name(nameChange),
          username: Name(username),
          password: Password(originalPassword),
          email: EmailAddress(emailAddress),
        ),
        passwordConfirmator: PasswordConfirmator(
          password: originalPassword,
          confirmation: originalPassword,
        ),
        passwordToCompare: originalPassword,
      ),
      ProfileEditingFormState.initial().copyWith(
        user: user.copyWith(
          name: Name(nameChange),
          username: Name(username),
          password: Password(originalPassword),
          email: EmailAddress(emailAddress),
          birthday: PastDate(birthday),
        ),
        passwordConfirmator: PasswordConfirmator(
          password: originalPassword,
          confirmation: originalPassword,
        ),
        passwordToCompare: originalPassword,
      ),
      ProfileEditingFormState.initial().copyWith(
        user: user.copyWith(
          name: Name(nameChange),
          username: Name(username),
          birthday: PastDate(birthday),
          password: Password(originalPassword),
          email: EmailAddress(emailAddress),
          description: EntityDescription(description),
        ),
        passwordConfirmator: PasswordConfirmator(
          password: originalPassword,
          confirmation: originalPassword,
        ),
        passwordToCompare: originalPassword,
      ),
      ProfileEditingFormState.initial().copyWith(
        user: user.copyWith(
          name: Name(nameChange),
          username: Name(username),
          birthday: PastDate(birthday),
          password: Password(originalPassword),
          email: EmailAddress(emailAddress),
          description: EntityDescription(description),
          interestsIds: interestIds,
        ),
        passwordConfirmator: PasswordConfirmator(
          password: originalPassword,
          confirmation: originalPassword,
        ),
        passwordToCompare: originalPassword,
      ),
      ProfileEditingFormState.initial().copyWith(
        user: user.copyWith(
          name: Name(nameChange),
          username: Name(username),
          birthday: PastDate(birthday),
          password: Password(originalPassword),
          email: EmailAddress(emailAddress),
          description: EntityDescription(description),
          interestsIds: interestIds,
          imageFileOption: some(imageFile),
        ),
        passwordConfirmator: PasswordConfirmator(
          password: originalPassword,
          confirmation: originalPassword,
        ),
        passwordToCompare: originalPassword,
      ),
      ProfileEditingFormState.initial().copyWith(
        user: user.copyWith(
          name: Name(nameChange),
          username: Name(username),
          birthday: PastDate(birthday),
          password: Password(originalPassword),
          email: EmailAddress(emailAddress),
          description: EntityDescription(description),
          interestsIds: interestIds,
          imageFileOption: some(imageFile),
        ),
        passwordConfirmator: PasswordConfirmator(
          password: originalPassword,
          confirmation: originalPassword,
        ),
        passwordToCompare: originalPassword,
        isSubmitting: true,
      ),
      ProfileEditingFormState.initial().copyWith(
        user: user.copyWith(
          name: Name(nameChange),
          username: Name(username),
          birthday: PastDate(birthday),
          password: Password(originalPassword),
          email: EmailAddress(emailAddress),
          description: EntityDescription(description),
          interestsIds: interestIds,
          imageFileOption: some(imageFile),
        ),
        passwordConfirmator: PasswordConfirmator(
          password: originalPassword,
          confirmation: originalPassword,
        ),
        passwordToCompare: originalPassword,
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
          return getIt<ProfileEditingFormBloc>();
        },
        act: (bloc) async {
          bloc.add(ProfileEditingFormEvent.initialized(user));
          bloc.add(const ProfileEditingFormEvent.nameChanged(nameChange));
          bloc.add(const ProfileEditingFormEvent.usernameChanged(username));
          bloc.add(ProfileEditingFormEvent.passwordChanged(originalPassword));
          bloc.add(const ProfileEditingFormEvent.emailAddressChanged(emailAddress));
          bloc.add(ProfileEditingFormEvent.birthdayChanged(birthday));
          bloc.add(const ProfileEditingFormEvent.descriptionChanged(description));
          bloc.add(ProfileEditingFormEvent.interestsChanged(interests));
          bloc.add(ProfileEditingFormEvent.imageChanged(imageFile));
          bloc.add(const ProfileEditingFormEvent.submitted());
        },
        verify: (_) async => verify(editUser.call(any)),
        expect: [
          ProfileEditingFormState.initial().copyWith(
            user: user,
            passwordConfirmator: PasswordConfirmator(
              password: originalPassword,
              confirmation: originalPassword,
            ),
            passwordToCompare: originalPassword,
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              name: Name(nameChange),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: originalPassword,
              confirmation: originalPassword,
            ),
            passwordToCompare: originalPassword,
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              name: Name(nameChange),
              username: Name(username),
              password: Password(originalPassword),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: originalPassword,
              confirmation: originalPassword,
            ),
            passwordToCompare: originalPassword,
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              name: Name(nameChange),
              username: Name(username),
              password: Password(originalPassword),
              email: EmailAddress(emailAddress),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: originalPassword,
              confirmation: originalPassword,
            ),
            passwordToCompare: originalPassword,
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              name: Name(nameChange),
              username: Name(username),
              password: Password(originalPassword),
              email: EmailAddress(emailAddress),
              birthday: PastDate(birthday),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: originalPassword,
              confirmation: originalPassword,
            ),
            passwordToCompare: originalPassword,
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              name: Name(nameChange),
              username: Name(username),
              birthday: PastDate(birthday),
              password: Password(originalPassword),
              email: EmailAddress(emailAddress),
              description: EntityDescription(description),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: originalPassword,
              confirmation: originalPassword,
            ),
            passwordToCompare: originalPassword,
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              name: Name(nameChange),
              username: Name(username),
              birthday: PastDate(birthday),
              password: Password(originalPassword),
              email: EmailAddress(emailAddress),
              description: EntityDescription(description),
              interestsIds: interestIds,
            ),
            passwordConfirmator: PasswordConfirmator(
              password: originalPassword,
              confirmation: originalPassword,
            ),
            passwordToCompare: originalPassword,
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              name: Name(nameChange),
              username: Name(username),
              birthday: PastDate(birthday),
              password: Password(originalPassword),
              email: EmailAddress(emailAddress),
              description: EntityDescription(description),
              interestsIds: interestIds,
              imageFileOption: some(imageFile),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: originalPassword,
              confirmation: originalPassword,
            ),
            passwordToCompare: originalPassword,
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              name: Name(nameChange),
              username: Name(username),
              birthday: PastDate(birthday),
              password: Password(originalPassword),
              email: EmailAddress(emailAddress),
              description: EntityDescription(description),
              interestsIds: interestIds,
              imageFileOption: some(imageFile),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: originalPassword,
              confirmation: originalPassword,
            ),
            passwordToCompare: originalPassword,
            isSubmitting: true,
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              name: Name(nameChange),
              username: Name(username),
              password: Password(originalPassword),
              email: EmailAddress(emailAddress),
              birthday: PastDate(birthday),
              description: EntityDescription(description),
              interestsIds: interestIds,
              imageFileOption: some(imageFile),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: originalPassword,
              confirmation: originalPassword,
            ),
            passwordToCompare: originalPassword,
            showErrorMessages: true,
            failureOrSuccessOption: some(left(failure)),
          ),
        ],
      );
      blocTest(
        TestDescription.shouldResetOption,
        build: () {
          when(editUser.call(any)).thenAnswer((_) async => left(failure));
          return getIt<ProfileEditingFormBloc>();
        },
        act: (bloc) async {
          bloc.add(ProfileEditingFormEvent.initialized(user));
          bloc.add(const ProfileEditingFormEvent.nameChanged(nameChange));
          bloc.add(const ProfileEditingFormEvent.usernameChanged(username));
          bloc.add(ProfileEditingFormEvent.passwordChanged(originalPassword));
          bloc.add(const ProfileEditingFormEvent.emailAddressChanged(emailAddress));
          bloc.add(ProfileEditingFormEvent.birthdayChanged(birthday));
          bloc.add(const ProfileEditingFormEvent.descriptionChanged(description));
          bloc.add(ProfileEditingFormEvent.interestsChanged(interests));
          bloc.add(ProfileEditingFormEvent.imageChanged(imageFile));
          bloc.add(const ProfileEditingFormEvent.submitted());
          bloc.add(const ProfileEditingFormEvent.nameChanged(name));
        },
        verify: (_) async => verify(editUser.call(any)),
        expect: [
          ProfileEditingFormState.initial().copyWith(
            user: user,
            passwordConfirmator: PasswordConfirmator(
              password: originalPassword,
              confirmation: originalPassword,
            ),
            passwordToCompare: originalPassword,
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              name: Name(nameChange),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: originalPassword,
              confirmation: originalPassword,
            ),
            passwordToCompare: originalPassword,
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              name: Name(nameChange),
              username: Name(username),
              password: Password(originalPassword),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: originalPassword,
              confirmation: originalPassword,
            ),
            passwordToCompare: originalPassword,
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              name: Name(nameChange),
              username: Name(username),
              password: Password(originalPassword),
              email: EmailAddress(emailAddress),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: originalPassword,
              confirmation: originalPassword,
            ),
            passwordToCompare: originalPassword,
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              name: Name(nameChange),
              username: Name(username),
              password: Password(originalPassword),
              email: EmailAddress(emailAddress),
              birthday: PastDate(birthday),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: originalPassword,
              confirmation: originalPassword,
            ),
            passwordToCompare: originalPassword,
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              name: Name(nameChange),
              username: Name(username),
              birthday: PastDate(birthday),
              password: Password(originalPassword),
              email: EmailAddress(emailAddress),
              description: EntityDescription(description),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: originalPassword,
              confirmation: originalPassword,
            ),
            passwordToCompare: originalPassword,
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              name: Name(nameChange),
              username: Name(username),
              birthday: PastDate(birthday),
              password: Password(originalPassword),
              email: EmailAddress(emailAddress),
              description: EntityDescription(description),
              interestsIds: interestIds,
            ),
            passwordConfirmator: PasswordConfirmator(
              password: originalPassword,
              confirmation: originalPassword,
            ),
            passwordToCompare: originalPassword,
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              name: Name(nameChange),
              username: Name(username),
              birthday: PastDate(birthday),
              password: Password(originalPassword),
              email: EmailAddress(emailAddress),
              description: EntityDescription(description),
              interestsIds: interestIds,
              imageFileOption: some(imageFile),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: originalPassword,
              confirmation: originalPassword,
            ),
            passwordToCompare: originalPassword,
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              name: Name(nameChange),
              username: Name(username),
              birthday: PastDate(birthday),
              password: Password(originalPassword),
              email: EmailAddress(emailAddress),
              description: EntityDescription(description),
              interestsIds: interestIds,
              imageFileOption: some(imageFile),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: originalPassword,
              confirmation: originalPassword,
            ),
            passwordToCompare: originalPassword,
            isSubmitting: true,
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              name: Name(nameChange),
              username: Name(username),
              password: Password(originalPassword),
              email: EmailAddress(emailAddress),
              birthday: PastDate(birthday),
              description: EntityDescription(description),
              interestsIds: interestIds,
              imageFileOption: some(imageFile),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: originalPassword,
              confirmation: originalPassword,
            ),
            passwordToCompare: originalPassword,
            showErrorMessages: true,
            failureOrSuccessOption: some(left(failure)),
          ),
          ProfileEditingFormState.initial().copyWith(
            user: user.copyWith(
              name: Name(name),
              username: Name(username),
              password: Password(originalPassword),
              email: EmailAddress(emailAddress),
              birthday: PastDate(birthday),
              description: EntityDescription(description),
              interestsIds: interestIds,
              imageFileOption: some(imageFile),
            ),
            passwordConfirmator: PasswordConfirmator(
              password: originalPassword,
              confirmation: originalPassword,
            ),
            passwordToCompare: originalPassword,
            showErrorMessages: true,
          ),
        ],
      );
    },
  );
}
