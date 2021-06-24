import 'package:freezed_annotation/freezed_annotation.dart';

part 'coins_dto.freezed.dart';
part 'coins_dto.g.dart';

@freezed
class CoinsDto with _$CoinsDto {
  const CoinsDto._();

  const factory CoinsDto({
    required String tenCoinsProductId,
  }) = _CoinsDto;

  factory CoinsDto.fromJson(Map<String, dynamic> json) => _$CoinsDtoFromJson(json);
}
