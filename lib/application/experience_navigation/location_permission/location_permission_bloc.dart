import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:permission_handler/permission_handler.dart';

part 'location_permission_bloc.freezed.dart';
part 'location_permission_event.dart';
part 'location_permission_state.dart';

@lazySingleton
class LocationPermissionBloc
    extends Bloc<LocationPermissionEvent, LocationPermissionState> {
  LocationPermissionBloc() : super(const LocationPermissionState.initial());

  @override
  Stream<LocationPermissionState> mapEventToState(
    LocationPermissionEvent event,
  ) async* {
    yield* event.map(
      initialized: _onInitialized,
    );
  }

  Stream<LocationPermissionState> _onInitialized(_) async* {
    final _permission = await Permission.location.request();
    yield _permission.isGranted
        ? const LocationPermissionState.granted()
        : const LocationPermissionState.denied();
  }
}
