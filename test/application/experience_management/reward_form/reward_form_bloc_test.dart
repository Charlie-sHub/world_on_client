import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:worldon/application/experience_management/reward_form/reward_form_bloc.dart';
import 'package:worldon/domain/core/entities/reward/reward.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
    },
  );
  const _name = "test reward";
  const _invalidName = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa";
  const _description = "For testing";
  final imageFile = File("assets/reward_placeholder.jpg");
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<RewardFormBloc>(),
    expect: [],
  );
  group(
    TestDescription.groupOnSuccess,
    () {
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the description",
        build: () => getIt<RewardFormBloc>(),
        act: (bloc) async => bloc.add(const RewardFormEvent.descriptionChanged(_description)),
        expect: [
          RewardFormState.initial().copyWith(
            reward: Reward.empty().copyWith(
              description: EntityDescription(_description),
            ),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the name",
        build: () => getIt<RewardFormBloc>(),
        act: (bloc) async => bloc.add(const RewardFormEvent.nameChanged(_name)),
        expect: [
          RewardFormState.initial().copyWith(
            reward: Reward.empty().copyWith(
              name: Name(_name),
            ),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the imageFile",
        build: () => getIt<RewardFormBloc>(),
        act: (bloc) async => bloc.add(RewardFormEvent.imageChanged(imageFile)),
        expect: [
          RewardFormState.initial().copyWith(
            reward: Reward.empty().copyWith(
              imageFile: some(imageFile),
            ),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitSuccess} creating a new Reward",
        build: () => getIt<RewardFormBloc>(),
        act: (bloc) async {
          bloc.add(const RewardFormEvent.descriptionChanged(_description));
          bloc.add(const RewardFormEvent.nameChanged(_name));
          bloc.add(RewardFormEvent.imageChanged(imageFile));
          bloc.add(const RewardFormEvent.submitted());
        },
        expect: [
          RewardFormState.initial().copyWith(
            reward: Reward.empty().copyWith(
              description: EntityDescription(_description),
            ),
          ),
          RewardFormState.initial().copyWith(
            reward: Reward.empty().copyWith(
              description: EntityDescription(_description),
              name: Name(_name),
            ),
          ),
          RewardFormState.initial().copyWith(
            reward: Reward.empty().copyWith(
              description: EntityDescription(_description),
              name: Name(_name),
              imageFile: some(imageFile),
            ),
          ),
          RewardFormState.initial().copyWith(
            reward: Reward.empty().copyWith(
              description: EntityDescription(_description),
              name: Name(_name),
              imageFile: some(imageFile),
            ),
            isSubmitting: true,
          ),
          RewardFormState.initial(),
        ],
      );
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {
      blocTest(
        "Should emit with showErrorMessages to true",
        build: () => getIt<RewardFormBloc>(),
        act: (bloc) async {
          bloc.add(const RewardFormEvent.descriptionChanged(_description));
          bloc.add(const RewardFormEvent.nameChanged(_invalidName));
          bloc.add(RewardFormEvent.imageChanged(imageFile));
          bloc.add(const RewardFormEvent.submitted());
        },
        expect: [
          RewardFormState.initial().copyWith(
            reward: Reward.empty().copyWith(
              description: EntityDescription(_description),
            ),
          ),
          RewardFormState.initial().copyWith(
            reward: Reward.empty().copyWith(
              description: EntityDescription(_description),
              name: Name(_invalidName),
            ),
          ),
          RewardFormState.initial().copyWith(
            reward: Reward.empty().copyWith(
              description: EntityDescription(_description),
              name: Name(_invalidName),
              imageFile: some(imageFile),
            ),
          ),
          RewardFormState.initial().copyWith(
            reward: Reward.empty().copyWith(
              description: EntityDescription(_description),
              name: Name(_invalidName),
              imageFile: some(imageFile),
            ),
            showErrorMessages: true,
          ),
        ],
      );
    },
  );
}
