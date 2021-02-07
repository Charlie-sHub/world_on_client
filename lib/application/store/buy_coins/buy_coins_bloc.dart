import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'buy_coins_event.dart';

part 'buy_coins_state.dart';

class BuyCoinsBloc extends Bloc<BuyCoinsEvent, BuyCoinsState> {
  BuyCoinsBloc() : super(BuyCoinsInitial());

  @override
  Stream<BuyCoinsState> mapEventToState(
    BuyCoinsEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
