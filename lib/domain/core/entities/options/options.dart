import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/user/user.dart';

part 'options.freezed.dart';

/// [Options] entity class.
///
/// [Options] are chosen by the [User] to customize his experience in the app.
@freezed
abstract class Options with _$Options {
  const factory Options({
    @required int id,
    @required String languageCode,
  }) = _Options;
}
