import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/options/options.dart';

part 'options_dto.freezed.dart';

part 'options_dto.g.dart';

@freezed
abstract class OptionsDto implements _$OptionsDto {
  const OptionsDto._();

  const factory OptionsDto({
    @required int id,
    @required String languageCode,
  }) = _OptionsDto;

  factory OptionsDto.fromDomain(Options options) => OptionsDto(
        id: options.id,
        languageCode: options.languageCode,
      );

  Options toDomain() => Options(
        id: id,
        languageCode: languageCode,
      );

  factory OptionsDto.fromJson(Map<String, dynamic> json) => _$OptionsDtoFromJson(json);
}
