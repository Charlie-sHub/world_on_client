import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/validation/objects/search_term.dart';
import 'package:worldon/domain/search/use_case/watch_search_tags_by_name.dart';
import 'package:worldon/injection.dart';

part 'search_tags_by_name_watcher_bloc.freezed.dart';
part 'search_tags_by_name_watcher_event.dart';
part 'search_tags_by_name_watcher_state.dart';

@injectable
class SearchTagsByNameWatcherBloc extends Bloc<SearchTagsByNameWatcherEvent, SearchTagsByNameWatcherState> {
  SearchTagsByNameWatcherBloc() : super(const SearchTagsByNameWatcherState.initial());
  StreamSubscription<Either<Failure, KtList<Tag>>> _tagsStreamSubscription;

  @override
  Stream<SearchTagsByNameWatcherState> mapEventToState(SearchTagsByNameWatcherEvent event) async* {
    yield* event.map(
      watchTagsFoundByNameStarted: _onWatchTagsFoundByNameStarted,
      resultsReceived: _onResultsReceived,
    );
  }

  Stream<SearchTagsByNameWatcherState> _onResultsReceived(_ResultsReceived event) async* {
    yield event.failureOrTags.fold(
      (failure) => SearchTagsByNameWatcherState.searchFailure(failure),
      (tagsFound) => SearchTagsByNameWatcherState.searchSuccess(tagsFound),
    );
  }

  Stream<SearchTagsByNameWatcherState> _onWatchTagsFoundByNameStarted(_WatchTagsFoundByNameStarted event) async* {
    yield const SearchTagsByNameWatcherState.searchInProgress();
    await _tagsStreamSubscription?.cancel();
    final _searchTagsByName = getIt<WatchSearchTagsByName>();
    _tagsStreamSubscription = _searchTagsByName(
      Params(name: event.searchTerm),
    ).listen(
      (_failureOrTags) => add(SearchTagsByNameWatcherEvent.resultsReceived(_failureOrTags)),
    );
  }

  @override
  Future<void> close() async {
    await _tagsStreamSubscription?.cancel();
    return super.close();
  }
}
