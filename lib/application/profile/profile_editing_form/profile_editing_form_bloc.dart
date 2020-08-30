import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/email_address.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';
import 'package:worldon/domain/core/validation/objects/password_confirmator.dart';
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
      initialized: _onInitialized,
      imageChanged: _onImageChanged,
      nameChanged: _onNameChanged,
      usernameChanged: _onUsernameChanged,
      passwordChanged: _onPasswordChanged,
      passwordConfirmationChanged: _onPasswordConfirmationChanged,
      emailAddressChanged: _onEmailAddressChanged,
      birthdayChanged: _onBirthdayChanged,
      descriptionChanged: _onDescriptionChanged,
      interestsChanged: _onInterestsChanged,
      submitted: _onSubmitted,
    );
  }

  Stream<ProfileEditingFormState> _onSubmitted(_) async* {
    Either<Failure, Unit> _failureOrUnit;
    yield state.copyWith(
      isSubmitting: true,
      failureOrSuccessOption: none(),
    );
    if (state.user.isValid && state.passwordConfirmator.isValid()) {
      final _userToEdit = state.user.copyWith(
        modificationDate: PastDate(DateTime.now()),
      );
      final _editUser = getIt<EditUser>();
      _failureOrUnit = await _editUser(
        Params(userToEdit: _userToEdit),
      );
    }
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      failureOrSuccessOption: optionOf(_failureOrUnit),
    );
  }

  Stream<ProfileEditingFormState> _onInterestsChanged(_InterestsChanged event) async* {
    yield state.copyWith(
      user: state.user.copyWith(
        interestsIds: event.interests.map((_tag) => _tag.id).toSet(),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<ProfileEditingFormState> _onDescriptionChanged(_DescriptionChanged event) async* {
    yield state.copyWith(
      user: state.user.copyWith(
        description: EntityDescription(event.description),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<ProfileEditingFormState> _onBirthdayChanged(_BirthdayChanged event) async* {
    yield state.copyWith(
      user: state.user.copyWith(
        birthday: PastDate(event.birthday),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<ProfileEditingFormState> _onEmailAddressChanged(_EmailAddressChanged event) async* {
    yield state.copyWith(
      user: state.user.copyWith(
        email: EmailAddress(event.emailAddress),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<ProfileEditingFormState> _onPasswordConfirmationChanged(_PasswordConfirmationChanged event) async* {
    yield state.copyWith(
      passwordConfirmator: PasswordConfirmator(
        password: state.user.password.value.fold(
          (failure) => "",
          id,
        ),
        confirmation: event.passwordConfirmation,
      ),
      passwordToCompare: event.passwordConfirmation,
      failureOrSuccessOption: none(),
    );
  }

  Stream<ProfileEditingFormState> _onPasswordChanged(_PasswordChanged event) async* {
    yield state.copyWith(
      user: state.user.copyWith(
        password: Password(event.password),
      ),
      passwordConfirmator: PasswordConfirmator(
        password: event.password,
        confirmation: state.passwordToCompare,
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<ProfileEditingFormState> _onUsernameChanged(_UsernameChanged event) async* {
    yield state.copyWith(
      user: state.user.copyWith(
        username: Name(event.username),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<ProfileEditingFormState> _onNameChanged(_NameChanged event) async* {
    yield state.copyWith(
      user: state.user.copyWith(
        name: Name(event.name),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<ProfileEditingFormState> _onImageChanged(_ImageChanged event) async* {
    yield state.copyWith(
      user: state.user.copyWith(
        imageFileOption: some(event.imageFile),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<ProfileEditingFormState> _onInitialized(_Initialized event) async* {
    final user = event.userToEdit;
    yield state.copyWith(
      user: user,
      passwordConfirmator: PasswordConfirmator(
        password: user.password.getOrCrash(),
        confirmation: user.password.getOrCrash(),
      ),
      passwordToCompare: user.password.getOrCrash(),
    );
  }
}
