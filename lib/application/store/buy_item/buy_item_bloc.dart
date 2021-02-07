import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'buy_item_event.dart';

part 'buy_item_state.dart';

class BuyItemBloc extends Bloc<BuyItemEvent, BuyItemState> {
  BuyItemBloc() : super(BuyItemInitial());

  @override
  Stream<BuyItemState> mapEventToState(
    BuyItemEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
