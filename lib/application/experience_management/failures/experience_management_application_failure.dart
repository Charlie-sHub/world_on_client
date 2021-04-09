import 'package:freezed_annotation/freezed_annotation.dart';

part 'experience_management_application_failure.freezed.dart';

@freezed
abstract class ExperienceManagementApplicationFailure<T> with _$ExperienceManagementApplicationFailure<T> {
  // This name is too long even for me
  const factory ExperienceManagementApplicationFailure.surpassedImageLimit({@required int limit}) = SurpassedImageLimit<T>;
}
