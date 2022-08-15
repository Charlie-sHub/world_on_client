import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
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
class ProfileEditingFormBloc
    extends Bloc<ProfileEditingFormEvent, ProfileEditingFormState> {
  ProfileEditingFormBloc() : super(ProfileEditingFormState.initial()) {
    on<_Initialized>(_onInitialized);
    on<_NameChanged>(_onNameChanged);
    on<_ImageChanged>(_onImageChanged);
    on<_UsernameChanged>(_onUsernameChanged);
    on<_PasswordChanged>(_onPasswordChanged);
    on<_PasswordConfirmationChanged>(_onPasswordConfirmationChanged);
    on<_EmailAddressChanged>(_onEmailAddressChanged);
    on<_BirthdayChanged>(_onBirthdayChanged);
    on<_DescriptionChanged>(_onDescriptionChanged);
    on<_InterestsChanged>(_onInterestsChanged);
    on<_Submitted>(_onSubmitted);
  }

  FutureOr<void> _onSubmitted(_, Emitter emit) async {
    late Either<Failure, Unit> failureOrUnit;
    emit(
      state.copyWith(
        isSubmitting: true,
        failureOrSuccessOption: none(),
      ),
    );
    if (state.user.isValid && state.passwordConfirmator.isValid()) {
      final userToEdit = state.user.copyWith(
        modificationDate: PastDate(DateTime.now()),
      );
      failureOrUnit = await getIt<EditUser>()(
        Params(userToEdit: userToEdit),
      );
    }
    emit(
      state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        failureOrSuccessOption: optionOf(failureOrUnit),
      ),
    );
  }

  void _onInterestsChanged(
    _InterestsChanged event,
    Emitter emit,
  ) {
    emit(
      state.copyWith(
        user: state.user.copyWith(
          interestsIds: event.interests.dart
              .map(
                (tag) => tag.id,
              )
              .toSet(),
        ),
        failureOrSuccessOption: none(),
      ),
    );
  }

  void _onDescriptionChanged(_DescriptionChanged event, Emitter emit) {
    emit(
      state.copyWith(
        user: state.user.copyWith(
          description: EntityDescription(event.description),
        ),
        failureOrSuccessOption: none(),
      ),
    );
  }

  void _onBirthdayChanged(
    _BirthdayChanged event,
    Emitter emit,
  ) {
    emit(
      state.copyWith(
        user: state.user.copyWith(
          birthday: PastDate(event.birthday),
        ),
        failureOrSuccessOption: none(),
      ),
    );
  }

  void _onEmailAddressChanged(_EmailAddressChanged event, Emitter emit) {
    emit(
      state.copyWith(
        user: state.user.copyWith(
          email: EmailAddress(event.emailAddress),
        ),
        failureOrSuccessOption: none(),
      ),
    );
  }

  void _onPasswordConfirmationChanged(
    _PasswordConfirmationChanged event,
    Emitter emit,
  ) {
    emit(
      state.copyWith(
        passwordConfirmator: PasswordConfirmator(
          password: state.user.password.value.fold(
            (failure) => "",
            id,
          ),
          confirmation: event.passwordConfirmation,
        ),
        passwordToCompare: event.passwordConfirmation,
        failureOrSuccessOption: none(),
      ),
    );
  }

  void _onPasswordChanged(
    _PasswordChanged event,
    Emitter emit,
  ) {
    emit(
      state.copyWith(
        user: state.user.copyWith(
          password: Password(event.password),
        ),
        passwordConfirmator: PasswordConfirmator(
          password: event.password,
          confirmation: state.passwordToCompare,
        ),
        failureOrSuccessOption: none(),
      ),
    );
  }

  void _onUsernameChanged(
    _UsernameChanged event,
    Emitter emit,
  ) {
    emit(
      state.copyWith(
        user: state.user.copyWith(
          username: Name(event.username),
        ),
        failureOrSuccessOption: none(),
      ),
    );
  }

  void _onNameChanged(
    _NameChanged event,
    Emitter emit,
  ) {
    emit(
      state.copyWith(
        user: state.user.copyWith(
          name: Name(event.name),
        ),
        failureOrSuccessOption: none(),
      ),
    );
  }

  void _onImageChanged(
    _ImageChanged event,
    Emitter emit,
  ) {
    emit(
      state.copyWith(
        user: state.user.copyWith(
          imageFileOption: some(event.imageFile),
        ),
        failureOrSuccessOption: none(),
      ),
    );
  }

  void _onInitialized(
    _Initialized event,
    Emitter emit,
  ) {
    final user = event.userToEdit;
    emit(
      state.copyWith(
        user: user,
        passwordConfirmator: PasswordConfirmator(
          password: user.password.getOrCrash(),
          confirmation: user.password.getOrCrash(),
        ),
        passwordToCompare: user.password.getOrCrash(),
      ),
    );
  }
}
