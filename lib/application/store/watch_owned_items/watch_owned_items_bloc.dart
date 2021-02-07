import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'watch_owned_items_event.dart';

part 'watch_owned_items_state.dart';

class WatchOwnedItemsBloc extends Bloc<WatchOwnedItemsEvent, WatchOwnedItemsState> {
  WatchOwnedItemsBloc() : super(WatchOwnedItemsInitial());

  @override
  Stream<WatchOwnedItemsState> mapEventToState(
    WatchOwnedItemsEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
