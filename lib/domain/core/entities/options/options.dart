import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

part 'options.freezed.dart';

/// [Options] entity class.
///
/// [Options] are chosen by the [User] to customize his experience in the app.
@freezed
abstract class Options implements _$Options {
  const Options._();

  const factory Options({
    @required UniqueId id,
    @required String languageCode,
  }) = _Options;

  factory Options.empty() => Options(
        id: UniqueId(),
        languageCode: "",
      );
}
