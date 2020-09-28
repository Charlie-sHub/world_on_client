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
      tappedEULA: _onTappedEULA,
      submitted: _onSubmitted,
    );
  }

  Stream<RegistrationFormState> _onTappedEULA(_) async* {
    yield state.copyWith(
      acceptedEULA: !state.acceptedEULA,
      failureOrSuccessOption: none(),
    );
  }

  Stream<RegistrationFormState> _onSubmitted(_) async* {
    Either<Failure, Unit> _failureOrUnit;
    yield state.copyWith(
      isSubmitting: true,
      failureOrSuccessOption: none(),
    );
    final _canRegister = state.user.isValid && state.passwordConfirmator.isValid() && state.acceptedEULA && state.user.imageFileOption.isSome();
    if (_canRegister) {
      // TODO: Create default Options for the user before registering
      // For now with the languageCode of the phone
      _failureOrUnit = await getIt<Register>()(
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

  Stream<RegistrationFormState> _onInterestsChanged(_InterestsChanged event) async* {
    yield state.copyWith(
      user: state.user.copyWith(
        interestsIds: event.interests,
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<RegistrationFormState> _onDescriptionChanged(_DescriptionChanged event) async* {
    yield state.copyWith(
      user: state.user.copyWith(
        description: EntityDescription(event.description),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<RegistrationFormState> _onBirthdayChanged(_BirthdayChanged event) async* {
    yield state.copyWith(
      user: state.user.copyWith(
        birthday: PastDate(event.birthday),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<RegistrationFormState> _onEmailAddressChanged(_EmailAddressChanged event) async* {
    yield state.copyWith(
      user: state.user.copyWith(
        email: EmailAddress(event.emailAddress),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<RegistrationFormState> _onPasswordConfirmationChanged(_PasswordConfirmationChanged event) async* {
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

  Stream<RegistrationFormState> _onPasswordChanged(_PasswordChanged event) async* {
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

  Stream<RegistrationFormState> _onUsernameChanged(_UsernameChanged event) async* {
    yield state.copyWith(
      user: state.user.copyWith(
        username: Name(event.username),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<RegistrationFormState> _onNameChanged(_NameChanged event) async* {
    yield state.copyWith(
      user: state.user.copyWith(
        name: Name(event.name),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<RegistrationFormState> _onImageChanged(_ImageChanged event) async* {
    yield state.copyWith(
      user: state.user.copyWith(
        imageFileOption: some(event.imageFile),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<RegistrationFormState> _onInitialized(_) async* {
    final _userOption = await getIt<GetLoggedInUser>()(getIt<NoParams>());
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
