import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_domain_failure.freezed.dart';

@freezed
class ProfileDomainFailure<T> with _$ProfileDomainFailure<T> {
  const factory ProfileDomainFailure.followItself() = FollowItself<T>;

  const factory ProfileDomainFailure.blockItself() = BlockItself<T>;
}
