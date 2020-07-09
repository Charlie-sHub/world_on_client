import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/application/tag_management/tag_management_form/tag_management_form_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/tag_management/use_case/create_tag.dart';
import 'package:worldon/domain/tag_management/use_case/edit_tag.dart';
import 'package:worldon/injection.dart';

import '../../../domain/core/methods/get_valid_tag.dart';
import '../../../domain/core/methods/get_valid_user.dart';
import '../../../test_descriptions.dart';

void main() {
  CreateTag createTag;
  GetLoggedInUser getLoggedInUser;
  EditTag editTag;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      createTag = getIt<CreateTag>();
      getLoggedInUser = getIt<GetLoggedInUser>();
      editTag = getIt<EditTag>();
    },
  );
  final creator = getValidUser();
  const name = "Test";
  final tagToEdit = getValidTag().copyWith(creator: creator);
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () async => getIt<TagManagementFormBloc>(),
    skip: 0,
    expect: [TagManagementFormState.initial()],
  );
  group(
    TestDescription.testingInitialization,
    () {
      blocTest(
        TestDescription.shouldEmitInitialized,
        build: () async => getIt<TagManagementFormBloc>(),
        act: (bloc) async => bloc.add(
          TagManagementFormEvent.initialized(some(tagToEdit)),
        ),
        expect: [
          TagManagementFormState.initial().copyWith(
            tag: tagToEdit,
            isEditing: true,
          ),
        ],
      );
      blocTest(
        TestDescription.shouldNotEmitInitialized,
        build: () async => getIt<TagManagementFormBloc>(),
        act: (bloc) async => bloc.add(TagManagementFormEvent.initialized(none())),
        skip: 0,
        expect: [TagManagementFormState.initial()],
      );
    },
  );
  blocTest(
    "${TestDescription.shouldEmitUpdated} with the name",
    build: () async => getIt<TagManagementFormBloc>(),
    act: (bloc) async {
      bloc.add(TagManagementFormEvent.initialized(none()));
      bloc.add(const TagManagementFormEvent.nameChanged(name));
    },
    expect: [
      TagManagementFormState.initial().copyWith(
        tag: Tag.empty().copyWith(
          name: Name(name),
        ),
        failureOrSuccessOption: none(),
      ),
    ],
  );
  group(
    TestDescription.groupOnSuccess,
    () {
      blocTest(
        "${TestDescription.shouldEmitSuccess} creating a new Tag",
        build: () async {
          when(createTag.call(any)).thenAnswer((_) async => right(unit));
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(creator));
          return getIt<TagManagementFormBloc>();
        },
        act: (bloc) async {
          bloc.add(TagManagementFormEvent.initialized(none()));
          bloc.add(const TagManagementFormEvent.nameChanged(name));
          bloc.add(const TagManagementFormEvent.submitted());
        },
        verify: (_) async {
          verify(createTag.call(any));
        },
        expect: [
          TagManagementFormState.initial().copyWith(
            tag: Tag.empty().copyWith(
              creator: creator,
            ),
            failureOrSuccessOption: none(),
          ),
          TagManagementFormState.initial().copyWith(
            tag: Tag.empty().copyWith(
              creator: creator,
              name: Name(name),
            ),
            failureOrSuccessOption: none(),
          ),
          TagManagementFormState.initial().copyWith(
            tag: Tag.empty().copyWith(
              creator: creator,
              name: Name(name),
            ),
            isSubmitting: true,
            failureOrSuccessOption: none(),
          ),
          TagManagementFormState.initial().copyWith(
            tag: Tag.empty().copyWith(
              creator: creator,
              name: Name(name),
            ),
            showErrorMessages: true,
            failureOrSuccessOption: some(right(unit)),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitSuccess} editing a Tag",
        build: () async {
          when(editTag.call(any)).thenAnswer((_) async => right(unit));
          return getIt<TagManagementFormBloc>();
        },
        act: (bloc) async {
          bloc.add(
            TagManagementFormEvent.initialized(some(tagToEdit)),
          );
          bloc.add(const TagManagementFormEvent.nameChanged(name));
          bloc.add(const TagManagementFormEvent.submitted());
        },
        verify: (_) async {
          verify(editTag.call(any));
        },
        expect: [
          TagManagementFormState.initial().copyWith(
            tag: tagToEdit.copyWith(
              name: Name(name),
            ),
            isEditing: true,
            failureOrSuccessOption: none(),
          ),
          TagManagementFormState.initial().copyWith(
            tag: tagToEdit.copyWith(
              name: Name(name),
            ),
            isSubmitting: true,
            isEditing: true,
            failureOrSuccessOption: none(),
          ),
          TagManagementFormState.initial().copyWith(
            tag: tagToEdit.copyWith(
              name: Name(name),
            ),
            isSubmitting: false,
            isEditing: true,
            showErrorMessages: true,
            failureOrSuccessOption: some(right(unit)),
          ),
        ],
      );
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {
      blocTest(
        "${TestDescription.shouldEmitFailure} creating a new Tag",
        build: () async {
          when(createTag.call(any)).thenAnswer((_) async => left(failure));
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(creator));
          return getIt<TagManagementFormBloc>();
        },
        act: (bloc) async {
          bloc.add(
            TagManagementFormEvent.initialized(none()),
          );
          bloc.add(const TagManagementFormEvent.nameChanged(name));
          bloc.add(const TagManagementFormEvent.submitted());
        },
        verify: (_) async {
          verify(createTag.call(any));
        },
        expect: [
          TagManagementFormState.initial().copyWith(
            tag: Tag.empty().copyWith(
              creator: creator,
            ),
            failureOrSuccessOption: none(),
          ),
          TagManagementFormState.initial().copyWith(
            tag: Tag.empty().copyWith(
              creator: creator,
              name: Name(name),
            ),
            failureOrSuccessOption: none(),
          ),
          TagManagementFormState.initial().copyWith(
            tag: Tag.empty().copyWith(
              creator: creator,
              name: Name(name),
            ),
            isSubmitting: true,
            failureOrSuccessOption: none(),
          ),
          TagManagementFormState.initial().copyWith(
            tag: Tag.empty().copyWith(
              creator: creator,
              name: Name(name),
            ),
            isSubmitting: false,
            showErrorMessages: true,
            failureOrSuccessOption: some(left(failure)),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitFailure} editing a Tag",
        build: () async {
          when(editTag.call(any)).thenAnswer((_) async => left(failure));
          return getIt<TagManagementFormBloc>();
        },
        act: (bloc) async {
          bloc.add(
            TagManagementFormEvent.initialized(some(tagToEdit)),
          );
          bloc.add(const TagManagementFormEvent.nameChanged(name));
          bloc.add(const TagManagementFormEvent.submitted());
        },
        verify: (_) async {
          verify(editTag.call(any));
        },
        expect: [
          TagManagementFormState.initial().copyWith(
            tag: tagToEdit.copyWith(
              name: Name(name),
            ),
            isEditing: true,
            failureOrSuccessOption: none(),
          ),
          TagManagementFormState.initial().copyWith(
            tag: tagToEdit.copyWith(
              name: Name(name),
            ),
            isSubmitting: true,
            isEditing: true,
            failureOrSuccessOption: none(),
          ),
          TagManagementFormState.initial().copyWith(
            tag: tagToEdit.copyWith(
              name: Name(name),
            ),
            isEditing: true,
            showErrorMessages: true,
            failureOrSuccessOption: some(left(failure)),
          ),
        ],
      );
    },
  );
}
