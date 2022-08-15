import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/validation/objects/search_term.dart';
import 'package:worldon/domain/search/use_case/watch_search_tags_by_name.dart';
import 'package:worldon/injection.dart';

part 'search_tags_by_name_watcher_bloc.freezed.dart';
part 'search_tags_by_name_watcher_event.dart';
part 'search_tags_by_name_watcher_state.dart';

@injectable
class SearchTagsByNameWatcherBloc
    extends Bloc<SearchTagsByNameWatcherEvent, SearchTagsByNameWatcherState> {
  SearchTagsByNameWatcherBloc()
      : super(const SearchTagsByNameWatcherState.initial()) {
    on<_WatchTagsFoundByNameStarted>(_onWatchTagsFoundByNameStarted);
    on<_ResultsReceived>(_onResultsReceived);
  }

  StreamSubscription<Either<Failure, KtList<Tag>>>? _tagsStreamSubscription;

  void _onResultsReceived(_ResultsReceived event, Emitter emit) {
    emit(
      event.failureOrTags.fold(
        (failure) => SearchTagsByNameWatcherState.searchFailure(failure),
        (tagsFound) => SearchTagsByNameWatcherState.searchSuccess(tagsFound),
      ),
    );
  }

  FutureOr<void> _onWatchTagsFoundByNameStarted(
    _WatchTagsFoundByNameStarted event,
    Emitter emit,
  ) async {
    emit(const SearchTagsByNameWatcherState.searchInProgress());
    await _tagsStreamSubscription?.cancel();
    _tagsStreamSubscription = getIt<WatchSearchTagsByName>()(
      Params(name: event.searchTerm),
    ).listen(
      (failureOrTags) => add(
        SearchTagsByNameWatcherEvent.resultsReceived(failureOrTags),
      ),
    );
  }

  @override
  Future<void> close() async {
    await _tagsStreamSubscription?.cancel();
    return super.close();
  }
}
