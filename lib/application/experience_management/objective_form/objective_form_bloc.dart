import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/latitude.dart';
import 'package:worldon/domain/core/validation/objects/longitude.dart';

part 'objective_form_bloc.freezed.dart';
part 'objective_form_event.dart';
part 'objective_form_state.dart';

@injectable
class ObjectiveFormBloc extends Bloc<ObjectiveFormEvent, ObjectiveFormState> {
  ObjectiveFormBloc() : super(ObjectiveFormState.initial());

  @override
  Stream<ObjectiveFormState> mapEventToState(ObjectiveFormEvent event) async* {
    yield* event.map(
      descriptionChanged: _onDescriptionChanged,
      coordinatesChanged: _onCoordinatesChanged,
      imageChanged: _onImageChanged,
      submitted: _onSubmitted,
    );
  }

  Stream<ObjectiveFormState> _onSubmitted(_) async* {
    if (state.objective.isValid && state.objective.imageFile.isSome()) {
      yield state.copyWith(
        isSubmitting: true,
      );
      yield ObjectiveFormState.initial();
    } else {
      yield state.copyWith(
        showErrorMessages: true,
      );
    }
  }

  Stream<ObjectiveFormState> _onImageChanged(_ImageChanged event) async* {
    yield state.copyWith(
      objective: state.objective.copyWith(
        imageFile: some(event.imageFile),
      ),
    );
  }

  Stream<ObjectiveFormState> _onCoordinatesChanged(_CoordinatesChanged event) async* {
    yield state.copyWith(
      objective: state.objective.copyWith(
        coordinates: Coordinates(
          latitude: Latitude(event.latitude),
          longitude: Longitude(event.longitude),
        ),
      ),
    );
  }

  Stream<ObjectiveFormState> _onDescriptionChanged(_DescriptionChanged event) async* {
    yield state.copyWith(
      objective: state.objective.copyWith(
        description: EntityDescription(event.description),
      ),
    );
  }
}
