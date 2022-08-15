import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

part 'location_permission_bloc.freezed.dart';
part 'location_permission_event.dart';
part 'location_permission_state.dart';

@lazySingleton
class LocationPermissionBloc
    extends Bloc<LocationPermissionEvent, LocationPermissionState> {
  LocationPermissionBloc() : super(const LocationPermissionState.initial()) {
    on<_Initialized>(_onInitialized);
  }

  FutureOr<void> _onInitialized(_, Emitter emit) async {
    final permission = await Permission.location.request();
    emit(
      permission.isGranted
          ? const LocationPermissionState.granted()
          : const LocationPermissionState.denied(),
    );
  }
}
