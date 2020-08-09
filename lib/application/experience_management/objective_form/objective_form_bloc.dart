import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
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
      descriptionChanged: (event) async* {
        yield state.copyWith(
          objective: state.objective.copyWith(
            description: EntityDescription(event.description),
          ),
        );
      },
      coordinatesChanged: (event) async* {
        yield state.copyWith(
          objective: state.objective.copyWith(
            coordinates: Coordinates(
              latitude: Latitude(event.latitude),
              longitude: Longitude(event.longitude),
            ),
          ),
        );
      },
      imageChanged: (event) async* {
        yield state.copyWith(
          objective: state.objective.copyWith(
            imageFile: some(event.imageFile),
          ),
        );
      },
      submitted: (event) async* {
        if (state.objective.isValid) {
          yield state.copyWith(
            isSubmitting: true,
          );
        } else {
          yield state.copyWith(
            showErrorMessages: true,
          );
        }
      },
    );
  }
}
