import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/domain/core/entities/reward/reward.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';

part 'reward_form_bloc.freezed.dart';
part 'reward_form_event.dart';
part 'reward_form_state.dart';

@injectable
class RewardFormBloc extends Bloc<RewardFormEvent, RewardFormState> {
  RewardFormBloc() : super(RewardFormState.initial()) {
    on<_NameChanged>(_onNameChanged);
    on<_DescriptionChanged>(_onDescriptionChanged);
    on<_ImageChanged>(_onImageChanged);
    on<_Submitted>(_onSubmitted);
  }

  void _onNameChanged(_NameChanged event, Emitter emit) {
    emit(
      state.copyWith(
        reward: state.reward.copyWith(
          name: Name(event.name),
        ),
      ),
    );
  }

  void _onSubmitted(_, Emitter emit) {
    if (state.reward.isValid && state.reward.imageFile.isSome()) {
      emit(
        state.copyWith(
          isSubmitting: true,
        ),
      );
      emit(RewardFormState.initial());
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
        reward: state.reward.copyWith(
          imageFile: some(event.imageFile),
        ),
      ),
    );
  }

  void _onDescriptionChanged(_DescriptionChanged event, Emitter emit) {
    emit(
      state.copyWith(
        reward: state.reward.copyWith(
          description: EntityDescription(event.description),
        ),
      ),
    );
  }
}
