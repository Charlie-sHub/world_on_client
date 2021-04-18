import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/options/options.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

part 'options_dto.freezed.dart';
part 'options_dto.g.dart';

@freezed
class OptionsDto with _$OptionsDto {
  const OptionsDto._();

  const factory OptionsDto({
    required String id,
    required String languageCode,
  }) = _OptionsDto;

  factory OptionsDto.fromDomain(Options options) => OptionsDto(
        id: options.id.getOrCrash(),
        languageCode: options.languageCode,
      );

  Options toDomain() => Options(
        id: UniqueId.fromUniqueString(id),
        languageCode: languageCode,
      );

  factory OptionsDto.fromJson(Map<String, dynamic> json) => _$OptionsDtoFromJson(json);

  factory OptionsDto.fromFirestore(DocumentSnapshot document) => OptionsDto.fromJson(
        document.data()!,
      ).copyWith(
        id: document.id,
      );
}
