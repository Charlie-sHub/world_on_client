import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/email_address.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/profile/use_case/edit_user.dart';
import 'package:worldon/injection.dart';

part 'profile_editing_form_bloc.freezed.dart';
part 'profile_editing_form_event.dart';
part 'profile_editing_form_state.dart';

@injectable
class ProfileEditingFormBloc extends Bloc<ProfileEditingFormEvent, ProfileEditingFormState> {
  ProfileEditingFormBloc() : super(ProfileEditingFormState.initial());

  @override
  Stream<ProfileEditingFormState> mapEventToState(ProfileEditingFormEvent event) async* {
    yield* event.map(
      initialized: onInitialized,
      imageChanged: onImageChanged,
      nameChanged: onNameChanged,
      usernameChanged: onUsernameChanged,
      passwordChanged: onPasswordChanged,
      emailAddressChanged: onEmailAddressChanged,
      birthdayChanged: onBirthdayChanged,
      descriptionChanged: onDescriptionChanged,
      interestsChanged: onInterestsChanged,
      submitted: onSubmitted,
    );
  }

  Stream<ProfileEditingFormState> onSubmitted(_Submitted event) async* {
    Either<Failure, Unit> _failureOrUnit;
    yield state.copyWith(
      isSubmitting: true,
      failureOrSuccessOption: none(),
    );
    if (state.user.isValid) {
      final _register = getIt<EditUser>();
      _failureOrUnit = await _register(
        Params(userToEdit: state.user),
      );
    }
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      failureOrSuccessOption: optionOf(_failureOrUnit),
    );
  }

  Stream<ProfileEditingFormState> onInterestsChanged(_InterestsChanged event) async* {
    yield state.copyWith(
      user: state.user.copyWith(
        interests: event.interests,
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<ProfileEditingFormState> onDescriptionChanged(_DescriptionChanged event) async* {
    yield state.copyWith(
      user: state.user.copyWith(
        description: EntityDescription(event.description),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<ProfileEditingFormState> onBirthdayChanged(_BirthdayChanged event) async* {
    yield state.copyWith(
      user: state.user.copyWith(
        birthday: PastDate(event.birthday),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<ProfileEditingFormState> onEmailAddressChanged(_EmailAddressChanged event) async* {
    yield state.copyWith(
      user: state.user.copyWith(
        email: EmailAddress(event.emailAddress),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<ProfileEditingFormState> onPasswordChanged(_PasswordChanged event) async* {
    yield state.copyWith(
      user: state.user.copyWith(
        password: Password(event.password),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<ProfileEditingFormState> onUsernameChanged(_UsernameChanged event) async* {
    yield state.copyWith(
      user: state.user.copyWith(
        username: Name(event.username),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<ProfileEditingFormState> onNameChanged(_NameChanged event) async* {
    yield state.copyWith(
      user: state.user.copyWith(
        name: Name(event.name),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<ProfileEditingFormState> onImageChanged(_ImageChanged event) async* {
    yield state.copyWith(
      user: state.user.copyWith(
        imageFileOption: some(event.imageFile),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<ProfileEditingFormState> onInitialized(_Initialized event) async* {
    final _getLoggedInUser = getIt<GetLoggedInUser>();
    final _userOption = await _getLoggedInUser(getIt<NoParams>());
    yield _userOption.fold(
      () => state,
      (user) => state.copyWith(user: user),
    );
  }
}
