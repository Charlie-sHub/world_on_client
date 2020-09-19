import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/domain/core/entities/reward/reward.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';

part 'reward_form_bloc.freezed.dart';
part 'reward_form_event.dart';
part 'reward_form_state.dart';

@injectable
class RewardFormBloc extends Bloc<RewardFormEvent, RewardFormState> {
  RewardFormBloc() : super(RewardFormState.initial());

  @override
  Stream<RewardFormState> mapEventToState(RewardFormEvent event) async* {
    yield* event.map(
      nameChanged: _onNameChanged,
      descriptionChanged: _onDescriptionChanged,
      imageChanged: _onImageChanged,
      submitted: _onSubmitted,
    );
  }

  Stream<RewardFormState> _onNameChanged(_NameChanged event) async* {
    yield state.copyWith(
      reward: state.reward.copyWith(
        name: Name(event.name),
      ),
    );
  }

  Stream<RewardFormState> _onSubmitted(_) async* {
    if (state.reward.isValid && state.reward.imageFile.isSome()) {
      yield state.copyWith(
        isSubmitting: true,
      );
      yield RewardFormState.initial();
    } else {
      yield state.copyWith(
        showErrorMessages: true,
      );
    }
  }

  Stream<RewardFormState> _onImageChanged(_ImageChanged event) async* {
    yield state.copyWith(
      reward: state.reward.copyWith(
        imageFile: some(event.imageFile),
      ),
    );
  }

  Stream<RewardFormState> _onDescriptionChanged(_DescriptionChanged event) async* {
    yield state.copyWith(
      reward: state.reward.copyWith(
        description: EntityDescription(event.description),
      ),
    );
  }
}
