import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'store_navigation_actor_bloc.freezed.dart';
part 'store_navigation_actor_event.dart';
part 'store_navigation_actor_state.dart';

@injectable
class StoreNavigationActorBloc
    extends Bloc<StoreNavigationActorEvent, StoreNavigationActorState> {
  StoreNavigationActorBloc()
      : super(const StoreNavigationActorState.itemStoreView()) {
    on<_ItemStoreTapped>(_onItemStoreTapped);
    on<_CoinStoreTapped>(_onCoinStoreTapped);
    on<_PromotionPlansTapped>(_onPromotionPlansTapped);
    on<_MyItemsTapped>(_onMyItemsTapped);
  }

  void _onPromotionPlansTapped(_, Emitter emit) {
    emit(const StoreNavigationActorState.promotionPlansView());
  }

  void _onCoinStoreTapped(_, Emitter emit) {
    emit(const StoreNavigationActorState.coinStoreView());
  }

  void _onItemStoreTapped(_, Emitter emit) {
    emit(const StoreNavigationActorState.itemStoreView());
  }

  void _onMyItemsTapped(_, Emitter emit) {
    emit(const StoreNavigationActorState.myItemsView());
  }
}
