part of 'store_app_bar_title_bloc.dart';

@freezed
class StoreAppBarTitleState with _$StoreAppBarTitleState {
  const factory StoreAppBarTitleState.initial() = _Initial;

  const factory StoreAppBarTitleState.store() = _Store;

  const factory StoreAppBarTitleState.promotions() = _Promotions;

  const factory StoreAppBarTitleState.myItems() = _MyItems;
}
