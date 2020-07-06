import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/application/options/options_form/options_form_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/options/options.dart';
import 'package:worldon/domain/options/use_case/save_global_options.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  SaveGlobalOptions saveGlobalOptions;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      saveGlobalOptions = getIt<SaveGlobalOptions>();
    },
  );
  const languageCode = "es";
  final options = Options.empty().copyWith(
    languageCode: languageCode,
  );
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () async => getIt<OptionsFormBloc>(),
    skip: 0,
    expect: [OptionsFormState.initial()],
  );
  group(
    TestDescription.testingInitialization,
    () {
      blocTest(
        TestDescription.shouldEmitInitialized,
        build: () async => getIt<OptionsFormBloc>(),
        act: (bloc) async => bloc.add(OptionsFormEvent.initialized(some(options))),
        expect: [
          OptionsFormState.initial().copyWith(
            options: options,
          ),
        ],
      );
      blocTest(
        TestDescription.shouldNotEmitInitialized,
        build: () async => getIt<OptionsFormBloc>(),
        act: (bloc) async => bloc.add(OptionsFormEvent.initialized(none())),
        skip: 0,
        expect: [OptionsFormState.initial()],
      );
    },
  );
  group(
    "Testing changing the Options",
    () {
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the languageCode",
        build: () async => getIt<OptionsFormBloc>(),
        act: (bloc) async {
          bloc.add(OptionsFormEvent.initialized(none()));
          bloc.add(const OptionsFormEvent.languageCodeChanged(languageCode));
        },
        expect: [
          OptionsFormState.initial().copyWith(
            options: Options.empty().copyWith(
              languageCode: languageCode,
            ),
          ),
        ],
      );
    },
  );
  group(
    TestDescription.groupOnSuccess,
    () {
      blocTest(
        "${TestDescription.shouldEmitSuccess} saving the options",
        build: () async {
          when(saveGlobalOptions.call(any)).thenAnswer((_) async => right(unit));
          return getIt<OptionsFormBloc>();
        },
        act: (bloc) async {
          bloc.add(OptionsFormEvent.initialized(some(options)));
          bloc.add(const OptionsFormEvent.submitted());
        },
        verify: (_) async => verify(saveGlobalOptions.call(any)),
        expect: [
          OptionsFormState.initial().copyWith(
            options: options,
          ),
          OptionsFormState.initial().copyWith(
            options: options,
            isSubmitting: true,
          ),
          OptionsFormState.initial().copyWith(
            options: options,
            showErrorMessages: true,
            failureOrSuccessOption: some(right(unit)),
          ),
        ],
      );
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {
      blocTest(
        "${TestDescription.shouldEmitFailure} saving the options",
        build: () async {
          when(saveGlobalOptions.call(any)).thenAnswer((_) async => left(failure));
          return getIt<OptionsFormBloc>();
        },
        act: (bloc) async {
          bloc.add(OptionsFormEvent.initialized(some(options)));
          bloc.add(const OptionsFormEvent.submitted());
        },
        verify: (_) async => verify(saveGlobalOptions.call(any)),
        expect: [
          OptionsFormState.initial().copyWith(
            options: options,
          ),
          OptionsFormState.initial().copyWith(
            options: options,
            isSubmitting: true,
          ),
          OptionsFormState.initial().copyWith(
            options: options,
            showErrorMessages: true,
            failureOrSuccessOption: some(left(failure)),
          ),
        ],
      );
      blocTest(
        TestDescription.shouldResetOption,
        build: () async {
          when(saveGlobalOptions.call(any)).thenAnswer((_) async => left(failure));
          return getIt<OptionsFormBloc>();
        },
        act: (bloc) async {
          bloc.add(OptionsFormEvent.initialized(some(options)));
          bloc.add(const OptionsFormEvent.submitted());
          bloc.add(const OptionsFormEvent.languageCodeChanged(languageCode));
        },
        verify: (_) async => verify(saveGlobalOptions.call(any)),
        expect: [
          OptionsFormState.initial().copyWith(
            options: options,
          ),
          OptionsFormState.initial().copyWith(
            options: options,
            isSubmitting: true,
          ),
          OptionsFormState.initial().copyWith(
            options: options,
            showErrorMessages: true,
            failureOrSuccessOption: some(left(failure)),
          ),
          OptionsFormState.initial().copyWith(
            options: options.copyWith(
              languageCode: languageCode,
            ),
            showErrorMessages: true,
          ),
        ],
      );
    },
  );
}
