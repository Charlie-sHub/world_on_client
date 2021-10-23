part of 'location_permission_bloc.dart';

@freezed
class LocationPermissionState with _$LocationPermissionState {
  const factory LocationPermissionState.initial() = _Initial;

  const factory LocationPermissionState.granted() = _Granted;

  const factory LocationPermissionState.denied() = _Denied;
}
