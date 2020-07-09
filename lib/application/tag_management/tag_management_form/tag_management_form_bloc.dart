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
      initialized: onInitialized,
      nameChanged: onNameChanged,
      submitted: onSubmitted,
    );
  }

  Stream<TagManagementFormState> onSubmitted(_Submitted event) async* {
    Either<Failure, Unit> _failureOrUnit;
    yield state.copyWith(
      isSubmitting: true,
      failureOrSuccessOption: none(),
    );
    if (state.tag.isValid) {
      if (state.isEditing) {
        final _editTag = getIt<edit_tag.EditTag>();
        _failureOrUnit = await _editTag(
          edit_tag.Params(
            tag: state.tag,
          ),
        );
      } else {
        final _postTag = getIt<create_tag.CreateTag>();
        _failureOrUnit = await _postTag(
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

  Stream<TagManagementFormState> onNameChanged(_NameChanged event) async* {
    yield state.copyWith(
      tag: state.tag.copyWith(
        name: Name(event.name),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<TagManagementFormState> onInitialized(_Initialized event) async* {
    yield await event.tagOption.fold(
      () async {
        final _getLoggedInUser = getIt<GetLoggedInUser>();
        final _currentUserOption = await _getLoggedInUser(getIt<NoParams>());
        final _currentUser = _currentUserOption.fold(
          // TODO: Perhaps this should throw an error and crash the app
          () => User.empty(),
          id,
        );
        return state.copyWith(
          tag: Tag.empty().copyWith(
            creator: _currentUser,
          ),
        );
      },
      (tag) => state.copyWith(
        tag: tag,
        isEditing: true,
      ),
    );
  }
}
