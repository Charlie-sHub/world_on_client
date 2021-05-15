import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'store_navigation_actor_bloc.freezed.dart';
part 'store_navigation_actor_event.dart';
part 'store_navigation_actor_state.dart';

@injectable
class StoreNavigationActorBloc extends Bloc<StoreNavigationActorEvent, StoreNavigationActorState> {
  StoreNavigationActorBloc() : super(const StoreNavigationActorState.itemStoreView());

  @override
  Stream<StoreNavigationActorState> mapEventToState(StoreNavigationActorEvent event) async* {
    yield* event.map(
      itemStoreTapped: _onItemStoreTapped,
      coinStoreTapped: _onCoinStoreTapped,
      promotionPlansTapped: _onPromotionPlansTapped,
      myItemsTapped: _onMyItemsTapped,
    );
  }

  Stream<StoreNavigationActorState> _onPromotionPlansTapped(_) async* {
    yield const StoreNavigationActorState.promotionPlansView();
  }

  Stream<StoreNavigationActorState> _onCoinStoreTapped(_) async* {
    yield const StoreNavigationActorState.coinStoreView();
  }

  Stream<StoreNavigationActorState> _onItemStoreTapped(_) async* {
    yield const StoreNavigationActorState.itemStoreView();
  }

  Stream<StoreNavigationActorState> _onMyItemsTapped(_) async* {
    yield const StoreNavigationActorState.myItemsView();
  }
}
