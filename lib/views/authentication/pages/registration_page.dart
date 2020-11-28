import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/authentication/authentication_bloc.dart';
import 'package:worldon/application/authentication/registration_form/registration_form_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/authentication/widgets/registration_form/registration_form.dart';
import 'package:worldon/views/core/routes/router.gr.dart';

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<RegistrationFormBloc>(),
        child: BlocConsumer<RegistrationFormBloc, RegistrationFormState>(
          listenWhen: (previous, current) => previous.failureOrSuccessOption != current.failureOrSuccessOption,
          listener: (context, state) => state.failureOrSuccessOption.fold(
            () => null,
            (either) => either.fold(
              (failure) => _onFailure(failure, context),
              (_) => _onSuccess(context),
            ),
          ),
          buildWhen: (previous, current) =>
              previous.showErrorMessages != current.showErrorMessages ||
              previous.acceptedEULA != current.acceptedEULA ||
              previous.user.imageFileOption.isSome() != current.user.imageFileOption.isSome(),
          builder: (context, state) => RegistrationForm(),
        ),
      ),
    );
  }

  void _onFailure(Failure failure, BuildContext context) => FlushbarHelper.createError(
        duration: const Duration(seconds: 2),
        message: failure.maybeMap(
          coreData: (failure) => failure.coreDataFailure.maybeMap(
            serverError: (failure) => failure.errorString,
            emailAlreadyInUse: (_) => S.of(context).emailAlreadyInUse,
            usernameAlreadyInUse: (_) => S.of(context).usernameAlreadyInUse,
            orElse: () => S.of(context).unknownError,
          ),
          orElse: () => S.of(context).unknownError,
        ),
      ).show(context);

  void _onSuccess(BuildContext context) {
    context.navigator.replace(Routes.mainPage);
    context.bloc<AuthenticationBloc>().add(const AuthenticationEvent.authenticationCheckRequested());
  }
}
