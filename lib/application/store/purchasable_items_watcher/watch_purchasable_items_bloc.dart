import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/item/item.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/store/use_case/watch_purchasable_items.dart';

import '../../../injection.dart';

part 'watch_purchasable_items_bloc.freezed.dart';
part 'watch_purchasable_items_event.dart';
part 'watch_purchasable_items_state.dart';

@injectable
class WatchPurchasableItemsBloc extends Bloc<WatchPurchasableItemsEvent, WatchPurchasableItemsState> {
  WatchPurchasableItemsBloc() : super(const WatchPurchasableItemsState.initial());

  StreamSubscription<Either<Failure, KtList<Item>>>? _purchasableItemsStreamSubscription;

  @override
  Stream<WatchPurchasableItemsState> mapEventToState(WatchPurchasableItemsEvent event) async* {
    yield* event.map(
      watchPurchasableItemsStarted: _onWatchPurchasableItemsStarted,
      resultsReceived: _onResultsReceived,
    );
  }

  Stream<WatchPurchasableItemsState> _onResultsReceived(_ResultsReceived event) async* {
    yield event.failureOrItems.fold(
      (failure) => WatchPurchasableItemsState.loadFailure(failure),
      (items) => WatchPurchasableItemsState.loadSuccess(items),
    );
  }

  Stream<WatchPurchasableItemsState> _onWatchPurchasableItemsStarted(_) async* {
    yield const WatchPurchasableItemsState.loadInProgress();
    await _purchasableItemsStreamSubscription?.cancel();
    _purchasableItemsStreamSubscription = getIt<WatchPurchasableItems>()(getIt<NoParams>()).listen(
        (_failureOrItems) => add(WatchPurchasableItemsEvent.resultsReceived(_failureOrItems)),
    );
  }

  @override
  Future<void> close() async {
    await _purchasableItemsStreamSubscription?.cancel();
    return super.close();
  }
}
