import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';
import 'package:worldon/domain/search/use_case/search_experiences_by_tags.dart';
import 'package:worldon/injection.dart';

part 'search_experiences_by_tags_bloc.freezed.dart';

part 'search_experiences_by_tags_event.dart';

part 'search_experiences_by_tags_state.dart';

@injectable
class SearchExperiencesByTagsBloc extends Bloc<SearchExperiencesByTagsEvent, SearchExperiencesByTagsState> {
  SearchExperiencesByTagsBloc() : super(const SearchExperiencesByTagsState.initial());

  @override
  Stream<SearchExperiencesByTagsState> mapEventToState(SearchExperiencesByTagsEvent event) async* {
    yield* event.map(
      submitted: onSubmitted,
    );
  }

  Stream<SearchExperiencesByTagsState> onSubmitted(_Submitted event) async* {
    yield const SearchExperiencesByTagsState.searchInProgress();
    final _tagSet = TagSet(KtSet.from(event.tags));
    if (_tagSet.isValid()) {
      final _searchExperiencesByTags = getIt<SearchExperiencesByTags>();
      yield* _searchExperiencesByTags(
        Params(tags: _tagSet),
      ).map(
        (failureOrExperiences) => failureOrExperiences.fold(
          (failure) => SearchExperiencesByTagsState.searchFailure(failure),
          (experiencesFound) => SearchExperiencesByTagsState.searchSuccess(experiencesFound),
        ),
      );
    } else {
      // TODO: check the code to see if there's code that can be replaced by failureOrCrash
      final _valueFailure = _tagSet.failureOrCrash();
      yield SearchExperiencesByTagsState.valueFailure(_valueFailure);
    }
  }
}
