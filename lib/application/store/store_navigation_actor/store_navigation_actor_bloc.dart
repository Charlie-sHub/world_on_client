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
  StoreNavigationActorBloc() : super(const StoreNavigationActorState.storeView());

  @override
  Stream<StoreNavigationActorState> mapEventToState(StoreNavigationActorEvent event) async* {
    yield* event.map(
      storeTapped: _onStoreTapped,
      promotionPlansTapped: _onPromotionPlansTapped,
      myItemsTapped: _onMyItemsTapped,
    );
  }

  Stream<StoreNavigationActorState> _onPromotionPlansTapped(_) async* {
    yield const StoreNavigationActorState.promotionPlansView();
  }

  Stream<StoreNavigationActorState> _onStoreTapped(_) async* {
    yield const StoreNavigationActorState.storeView();
  }

  Stream<StoreNavigationActorState> _onMyItemsTapped(_) async* {
    yield const StoreNavigationActorState.myItemsView();
  }
}
