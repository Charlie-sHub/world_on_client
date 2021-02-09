part of 'store_navigation_actor_bloc.dart';

@freezed
abstract class StoreNavigationActorEvent with _$StoreNavigationActorEvent {
  const factory StoreNavigationActorEvent.storeTapped() = _StoreTapped;

  const factory StoreNavigationActorEvent.myItemsTapped() = _MyItemsTapped;
}
