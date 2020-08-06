import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/authentication/use_case/register.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/email_address.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';
import 'package:worldon/domain/core/validation/objects/password_confirmator.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/injection.dart';

part 'registration_form_bloc.freezed.dart';
part 'registration_form_event.dart';
part 'registration_form_state.dart';

@injectable
class RegistrationFormBloc extends Bloc<RegistrationFormEvent, RegistrationFormState> {
  RegistrationFormBloc() : super(RegistrationFormState.initial());

  @override
  Stream<RegistrationFormState> mapEventToState(RegistrationFormEvent event) async* {
    yield* event.map(
      initialized: onInitialized,
      imageChanged: onImageChanged,
      nameChanged: onNameChanged,
      usernameChanged: onUsernameChanged,
      passwordChanged: onPasswordChanged,
      passwordConfirmationChanged: onPasswordConfirmationChanged,
      emailAddressChanged: onEmailAddressChanged,
      birthdayChanged: onBirthdayChanged,
      descriptionChanged: onDescriptionChanged,
      interestsChanged: onInterestsChanged,
      tappedEULA: onTappedEULA,
      submitted: onSubmitted,
    );
  }

  Stream<RegistrationFormState> onTappedEULA(_TappedEULA event) async* {
    yield state.copyWith(
      acceptedEULA: !state.acceptedEULA,
      failureOrSuccessOption: none(),
    );
  }

  Stream<RegistrationFormState> onSubmitted(_Submitted event) async* {
    Either<Failure, Unit> _failureOrUnit;
    yield state.copyWith(
      isSubmitting: true,
      failureOrSuccessOption: none(),
    );
    final _canRegister = state.user.isValid && state.passwordConfirmator.isValid() && state.acceptedEULA && state.user.imageFileOption.isSome();
    if (_canRegister) {
      final _register = getIt<Register>();
      // TODO: Create default Options for the user before registering
      // For now with the languageCode of the phone
      _failureOrUnit = await _register(
        Params(
          user: state.user,
        ),
      );
    }
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      failureOrSuccessOption: optionOf(_failureOrUnit),
    );
  }

  Stream<RegistrationFormState> onInterestsChanged(_InterestsChanged event) async* {
    yield state.copyWith(
      user: state.user.copyWith(
        interests: event.interests,
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<RegistrationFormState> onDescriptionChanged(_DescriptionChanged event) async* {
    yield state.copyWith(
      user: state.user.copyWith(
        description: EntityDescription(event.description),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<RegistrationFormState> onBirthdayChanged(_BirthdayChanged event) async* {
    yield state.copyWith(
      user: state.user.copyWith(
        birthday: PastDate(event.birthday),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<RegistrationFormState> onEmailAddressChanged(_EmailAddressChanged event) async* {
    yield state.copyWith(
      user: state.user.copyWith(
        email: EmailAddress(event.emailAddress),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<RegistrationFormState> onPasswordConfirmationChanged(_PasswordConfirmationChanged event) async* {
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

  Stream<RegistrationFormState> onPasswordChanged(_PasswordChanged event) async* {
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

  Stream<RegistrationFormState> onUsernameChanged(_UsernameChanged event) async* {
    yield state.copyWith(
      user: state.user.copyWith(
        username: Name(event.username),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<RegistrationFormState> onNameChanged(_NameChanged event) async* {
    // TODO: Why does the name change erases the password confirmation?
    yield state.copyWith(
      user: state.user.copyWith(
        name: Name(event.name),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<RegistrationFormState> onImageChanged(_ImageChanged event) async* {
    yield state.copyWith(
      user: state.user.copyWith(
        imageFileOption: some(event.imageFile),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<RegistrationFormState> onInitialized(_Initialized event) async* {
    final _getLoggedInUser = getIt<GetLoggedInUser>();
    final _userOption = await _getLoggedInUser(getIt<NoParams>());
    yield _userOption.fold(
      () => state,
      (user) => state.copyWith(
        user: user,
        passwordConfirmator: PasswordConfirmator(
          password: user.password.getOrCrash(),
          confirmation: user.password.getOrCrash(),
        ),
      ),
    );
  }
}
