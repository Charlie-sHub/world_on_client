import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coins_dto.freezed.dart';

part 'coins_dto.g.dart';

@freezed
abstract class CoinsDto implements _$CoinsDto {
  const CoinsDto._();

  const factory CoinsDto({
    @required String oneCoinProductId,
  }) = _CoinsDto;

  factory CoinsDto.fromJson(Map<String, dynamic> json) => _$CoinsDtoFromJson(json);

  factory CoinsDto.fromFirestore(DocumentSnapshot document) => CoinsDto.fromJson(document.data());
}
