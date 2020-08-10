import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:worldon/application/experience_management/objective_form/objective_form_bloc.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/latitude.dart';
import 'package:worldon/domain/core/validation/objects/longitude.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  GetLoggedInUser getLoggedInUser;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      getLoggedInUser = getIt<GetLoggedInUser>();
    },
  );
  const description = "For testing";
  final coordinates = Coordinates(
    latitude: Latitude(10),
    longitude: Longitude(10),
  );
  final imageFile = File("assets/objective_placeholder.jpg");
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<ObjectiveFormBloc>(),
    expect: [],
  );
  group(
    TestDescription.groupOnSuccess,
    () {
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the description",
        build: () => getIt<ObjectiveFormBloc>(),
        act: (bloc) async => bloc.add(const ObjectiveFormEvent.descriptionChanged(description)),
        expect: [
          ObjectiveFormState.initial().copyWith(
            objective: Objective.empty().copyWith(
              description: EntityDescription(description),
            ),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the coordinates",
        build: () => getIt<ObjectiveFormBloc>(),
        act: (bloc) async => bloc.add(
          ObjectiveFormEvent.coordinatesChanged(
            latitude: coordinates.latitude.value.fold(
              (_) => 0,
              id,
            ),
            longitude: coordinates.longitude.value.fold(
              (_) => 0,
              id,
            ),
          ),
        ),
        expect: [
          ObjectiveFormState.initial().copyWith(
            objective: Objective.empty().copyWith(
              coordinates: coordinates,
            ),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the imageFile",
        build: () => getIt<ObjectiveFormBloc>(),
        act: (bloc) async => bloc.add(ObjectiveFormEvent.imageChanged(imageFile)),
        expect: [
          ObjectiveFormState.initial().copyWith(
            objective: Objective.empty().copyWith(
              imageFile: some(imageFile),
            ),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitSuccess} creating a new Objective",
        build: () => getIt<ObjectiveFormBloc>(),
        act: (bloc) async {
          bloc.add(const ObjectiveFormEvent.descriptionChanged(description));
          bloc.add(
            ObjectiveFormEvent.coordinatesChanged(
              latitude: coordinates.latitude.value.fold(
                (_) => 0,
                id,
              ),
              longitude: coordinates.longitude.value.fold(
                (_) => 0,
                id,
              ),
            ),
          );
          bloc.add(ObjectiveFormEvent.imageChanged(imageFile));
          bloc.add(const ObjectiveFormEvent.submitted());
        },
        expect: [
          ObjectiveFormState.initial().copyWith(
            objective: Objective.empty().copyWith(
              description: EntityDescription(description),
            ),
          ),
          ObjectiveFormState.initial().copyWith(
            objective: Objective.empty().copyWith(
              description: EntityDescription(description),
              coordinates: coordinates,
            ),
          ),
          ObjectiveFormState.initial().copyWith(
            objective: Objective.empty().copyWith(
              description: EntityDescription(description),
              coordinates: coordinates,
              imageFile: some(imageFile),
            ),
          ),
          ObjectiveFormState.initial().copyWith(
            objective: Objective.empty().copyWith(
              description: EntityDescription(description),
              coordinates: coordinates,
              imageFile: some(imageFile),
            ),
            isSubmitting: true,
          ),
          ObjectiveFormState.initial(),
        ],
      );
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {
      final _invalidCoordinates = Coordinates(
        latitude: Latitude(0),
        longitude: Longitude(1000000),
      );
      blocTest(
        "Should emit with showErrorMessages to true",
        build: () => getIt<ObjectiveFormBloc>(),
        act: (bloc) async {
          bloc.add(const ObjectiveFormEvent.descriptionChanged(description));
          bloc.add(
            const ObjectiveFormEvent.coordinatesChanged(
              latitude: 0,
              longitude: 1000000,
            ),
          );
          bloc.add(ObjectiveFormEvent.imageChanged(imageFile));
          bloc.add(const ObjectiveFormEvent.submitted());
        },
        expect: [
          ObjectiveFormState.initial().copyWith(
            objective: Objective.empty().copyWith(
              description: EntityDescription(description),
            ),
          ),
          ObjectiveFormState.initial().copyWith(
            objective: Objective.empty().copyWith(
              description: EntityDescription(description),
              coordinates: _invalidCoordinates,
            ),
          ),
          ObjectiveFormState.initial().copyWith(
            objective: Objective.empty().copyWith(
              description: EntityDescription(description),
              coordinates: _invalidCoordinates,
              imageFile: some(imageFile),
            ),
          ),
          ObjectiveFormState.initial().copyWith(
            objective: Objective.empty().copyWith(
              description: EntityDescription(description),
              coordinates: _invalidCoordinates,
              imageFile: some(imageFile),
            ),
            showErrorMessages: true,
          ),
        ],
      );
    },
  );
}
