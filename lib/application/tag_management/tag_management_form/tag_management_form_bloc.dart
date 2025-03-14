import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/failures/error.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/tag_management/use_case/create_tag.dart' as create_tag;
import 'package:worldon/domain/tag_management/use_case/edit_tag.dart' as edit_tag;

import '../../../injection.dart';

part 'tag_management_form_bloc.freezed.dart';
part 'tag_management_form_event.dart';
part 'tag_management_form_state.dart';

@injectable
class TagManagementFormBloc extends Bloc<TagManagementFormEvent, TagManagementFormState> {
  TagManagementFormBloc() : super(TagManagementFormState.initial());

  @override
  Stream<TagManagementFormState> mapEventToState(TagManagementFormEvent event) async* {
    yield* event.map(
      initialized: _onInitialized,
      nameChanged: _onNameChanged,
      submitted: _onSubmitted,
    );
  }

  Stream<TagManagementFormState> _onSubmitted(_) async* {
    late Either<Failure, Unit> _failureOrUnit;
    yield state.copyWith(
      isSubmitting: true,
      failureOrSuccessOption: none(),
    );
    if (state.tag.isValid) {
      if (state.isEditing) {
        _failureOrUnit = await getIt<edit_tag.EditTag>()(
          edit_tag.Params(
            tag: state.tag,
          ),
        );
      } else {
        _failureOrUnit = await getIt<create_tag.CreateTag>()(
          create_tag.Params(
            tag: state.tag,
          ),
        );
      }
    }
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      failureOrSuccessOption: optionOf(_failureOrUnit),
    );
  }

  Stream<TagManagementFormState> _onNameChanged(_NameChanged event) async* {
    yield state.copyWith(
      tag: state.tag.copyWith(
        name: Name(event.name),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<TagManagementFormState> _onInitialized(_Initialized event) async* {
    yield await event.tagOption.fold(
      () async {
        final _currentUserOption = await getIt<GetLoggedInUser>()(getIt<NoParams>());
        final _currentUser = _currentUserOption.fold(
          () => throw UnAuthenticatedError(),
          id,
        );
        return state.copyWith(
          tag: Tag.empty().copyWith(
            creatorId: _currentUser.id,
          ),
          showErrorMessages: false,
        );
      },
      (tag) => state.copyWith(
        tag: tag,
        showErrorMessages: false,
        isEditing: true,
      ),
    );
  }
}
