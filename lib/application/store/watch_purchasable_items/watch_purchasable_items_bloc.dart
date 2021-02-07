import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'watch_purchasable_items_event.dart';

part 'watch_purchasable_items_state.dart';

class WatchPurchasableItemsBloc extends Bloc<WatchPurchasableItemsEvent, WatchPurchasableItemsState> {
  WatchPurchasableItemsBloc() : super(WatchPurchasableItemsInitial());

  @override
  Stream<WatchPurchasableItemsState> mapEventToState(
    WatchPurchasableItemsEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
