part of 'store_app_bar_title_bloc.dart';

@freezed
class StoreAppBarTitleEvent with _$StoreAppBarTitleEvent {
  const factory StoreAppBarTitleEvent.initialized() = _Initialized;

  const factory StoreAppBarTitleEvent.showedStore() = _ShowedStore;

  const factory StoreAppBarTitleEvent.showedPromotions() = _ShowedPromotions;

  const factory StoreAppBarTitleEvent.showedMyItems() = _ShowedMyItems;
}
