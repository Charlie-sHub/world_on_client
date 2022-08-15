import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/use_case/get_current_location.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/latitude.dart';
import 'package:worldon/domain/core/validation/objects/longitude.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/injection.dart';

part 'objective_form_bloc.freezed.dart';
part 'objective_form_event.dart';
part 'objective_form_state.dart';

@injectable
class ObjectiveFormBloc extends Bloc<ObjectiveFormEvent, ObjectiveFormState> {
  ObjectiveFormBloc() : super(ObjectiveFormState.initial()) {
    on<_Initialized>(_onInitialized);
    on<_DescriptionChanged>(_onDescriptionChanged);
    on<_TitleChanged>(_onTitleChanged);
    on<_CoordinatesChanged>(_onCoordinatesChanged);
    on<_ImageChanged>(_onImageChanged);
    on<_Submitted>(_onSubmitted);
  }

  FutureOr<void> _onInitialized(_, Emitter emit) async {
    final currentPosition = await getIt<GetCurrentLocation>()(NoParams());
    emit(
      state.copyWith(
        objective: state.objective.copyWith(
          coordinates: currentPosition.fold(
            (_) => Coordinates.empty(),
            id,
          ),
        ),
        loadedCoordinates: true,
      ),
    );
  }

  void _onSubmitted(_, Emitter emit) {
    if (state.objective.isValid) {
      emit(
        state.copyWith(
          isSubmitting: true,
        ),
      );
      emit(ObjectiveFormState.initial());
      add(const ObjectiveFormEvent.initialized());
    } else {
      emit(
        state.copyWith(
          showErrorMessages: true,
        ),
      );
    }
  }

  void _onImageChanged(_ImageChanged event, Emitter emit) {
    emit(
      state.copyWith(
        objective: state.objective.copyWith(
          imageFile: some(event.imageFile),
        ),
      ),
    );
  }

  void _onCoordinatesChanged(_CoordinatesChanged event, Emitter emit) {
    emit(
      state.copyWith(
        objective: state.objective.copyWith(
          coordinates: Coordinates(
            latitude: Latitude(event.latitude),
            longitude: Longitude(event.longitude),
          ),
        ),
      ),
    );
  }

  void _onDescriptionChanged(_DescriptionChanged event, Emitter emit) {
    emit(
      state.copyWith(
        objective: state.objective.copyWith(
          description: EntityDescription(event.description),
        ),
      ),
    );
  }

  void _onTitleChanged(_TitleChanged event, Emitter emit) {
    emit(
      state.copyWith(
        objective: state.objective.copyWith(
          title: Name(event.title),
        ),
      ),
    );
  }
}
