import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/validation/objects/search_term.dart';
import 'package:worldon/domain/search/use_case/search_tags_by_name.dart';
import 'package:worldon/injection.dart';

part 'tag_search_form_bloc.freezed.dart';

part 'tag_search_form_event.dart';

part 'tag_search_form_state.dart';

@injectable
class TagSearchFormBloc extends Bloc<TagSearchFormEvent, TagSearchFormState> {
  TagSearchFormBloc() : super(TagSearchFormState.initial());

  @override
  Stream<TagSearchFormState> mapEventToState(TagSearchFormEvent event) async* {
    yield* event.map(
      submittedSearchTerm: onSubmittedSearchTerm,
      addedTag: onAddedTag,
      subtractedTag: onSubtractedTag,
    );
  }

  Stream<TagSearchFormState> onSubtractedTag(_SubtractedTag event) async* {
    state.tagsSelected.remove(event.tag);
    yield state;
  }

  Stream<TagSearchFormState> onAddedTag(_AddedTag event) async* {
    state.tagsSelected.add(event.tag);
    yield state;
  }

  Stream<TagSearchFormState> onSubmittedSearchTerm(_SubmittedSearchTerm event) async* {
    yield state.copyWith(
      isSubmitting: true,
      failureOption: none(),
    );
    final _searchTerm = SearchTerm(event.searchTermString);
    if (_searchTerm.isValid()) {
      final _searchTagsByName = getIt<SearchTagsByName>();
      yield* _searchTagsByName(
        Params(name: _searchTerm),
      ).map(
        (failureOrTags) => failureOrTags.fold(
          (failure) => state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
            failureOption: some(failure),
          ),
          (tagsFound) => state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
            tagsFound: tagsFound,
          ),
        ),
      );
    } else {
      final _valueFailure = Failure.value(_searchTerm.failureOrCrash());
      yield state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        failureOption: some(_valueFailure),
      );
    }
  }
}
