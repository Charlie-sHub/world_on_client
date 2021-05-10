import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/authentication/authentication_bloc.dart';
import 'package:worldon/application/authentication/registration_form/registration_form_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/authentication/widgets/registration_form/registration_form.dart';
import 'package:worldon/views/core/routes/router.gr.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({
    Key? key,
    required this.userOption,
  }) : super(key: key);

  final Option<User> userOption;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocProvider(
          create: (context) => getIt<RegistrationFormBloc>()
            ..add(
              RegistrationFormEvent.initialized(userOption),
            ),
          child: BlocConsumer<RegistrationFormBloc, RegistrationFormState>(
            listenWhen: (previous, current) => previous.failureOrSuccessOption != current.failureOrSuccessOption,
            listener: (context, state) => state.failureOrSuccessOption.fold(
              () {},
              (either) => either.fold(
                (failure) => _onFailure(failure, context),
                (_) => _onSuccess(context),
              ),
            ),
            buildWhen: (previous, current) =>
                current.initialized ||
                previous.showErrorMessages != current.showErrorMessages ||
                previous.acceptedEULA != current.acceptedEULA ||
                current.user.imageFileOption.fold(
                  () => false,
                  (_) => true,
                ),
            builder: (context, state) => RegistrationForm(
              userOption: userOption,
            ),
          ),
        ),
      ),
    );
  }
  
  void _onFailure(Failure failure, BuildContext context) => FlushbarHelper.createError(
    duration: const Duration(seconds: 2),
    message: failure.maybeMap(
      coreData: (_coreDataFailure) => _coreDataFailure.coreDataFailure.maybeMap(
        serverError: (failure) => failure.errorString,
        emailAlreadyInUse: (_) => S.of(context).emailAlreadyInUse,
        usernameAlreadyInUse: (_) => S.of(context).usernameAlreadyInUse,
        orElse: () => S.of(context).unknownError,
      ),
      coreApplication: (_coreApplicationFailure) => _coreApplicationFailure.coreApplicationFailure.maybeMap(
        emptyFields: (_) => S.of(context).emptyFields,
        orElse: () => S.of(context).unknownError,
      ),
      orElse: () => S.of(context).unknownError,
    ),
  ).show(context);
  
  void _onSuccess(BuildContext context) {
    context.router.replace(const WelcomePageRoute());
    context.read<AuthenticationBloc>().add(const AuthenticationEvent.authenticationCheckRequested());
  }
}
