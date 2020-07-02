import 'dart:async';

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
import 'package:worldon/injection.dart';

part 'registration_form_bloc.freezed.dart';

part 'registration_form_event.dart';

part 'registration_form_state.dart';

@injectable
class RegistrationFormBloc extends Bloc<RegistrationFormEvent, RegistrationFormState> {
  @override
  RegistrationFormState get initialState => RegistrationFormState.initial();

  @override
  Stream<RegistrationFormState> mapEventToState(RegistrationFormEvent event) async* {
    yield* event.map(
      initialize: onInitialize,
      nameChange: onNameChange,
      usernameChange: onUsernameChange,
      passwordChange: onPasswordChange,
      emailAddressChange: onEmailAddressChange,
      birthdayChange: onBirthdayChange,
      descriptionChange: onDescriptionChange,
      interestsChange: onInterestsChange,
      submit: (event) async* {},
    );
  }

  Stream<RegistrationFormState> onInterestsChange(_InterestsChange event) async* {
    yield state.copyWith(
      user: state.user.copyWith(
        interests: event.interests,
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<RegistrationFormState> onDescriptionChange(_DescriptionChange event) async* {
    yield state.copyWith(
      user: state.user.copyWith(
        description: EntityDescription(event.description),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<RegistrationFormState> onBirthdayChange(_BirthdayChange event) async* {
    yield state.copyWith(
      user: state.user.copyWith(
        birthday: PastDate(event.birthday),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<RegistrationFormState> onEmailAddressChange(_EmailAddressChange event) async* {
    yield state.copyWith(
      user: state.user.copyWith(
        email: EmailAddress(event.emailAddress),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<RegistrationFormState> onPasswordChange(_PasswordChange event) async* {
    yield state.copyWith(
      user: state.user.copyWith(
        password: Password(event.password),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<RegistrationFormState> onUsernameChange(_UsernameChange event) async* {
    yield state.copyWith(
      user: state.user.copyWith(
        username: Name(event.username),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<RegistrationFormState> onNameChange(_NameChange event) async* {
    yield state.copyWith(
      user: state.user.copyWith(
        name: Name(event.name),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<RegistrationFormState> onInitialize(RegistrationFormEvent event) async* {
    final _getLoggedInUser = getIt<GetLoggedInUser>();
    final _userOption = await _getLoggedInUser(getIt<NoParams>());
    yield _userOption.fold(
      () => state,
      (user) => state.copyWith(user: user),
    );
  }
}
