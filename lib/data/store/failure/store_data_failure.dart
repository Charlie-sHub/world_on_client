import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_data_failure.freezed.dart';

@freezed
class StoreDataFailure<T> with _$StoreDataFailure<T> {
  const factory StoreDataFailure.notEnoughCoins() = NotEnoughCoins<T>;

  const factory StoreDataFailure.cancelled() = Cancelled<T>;

  const factory StoreDataFailure.unAvailableStore() = UnAvailableStore<T>;
}
