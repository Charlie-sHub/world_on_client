import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/authentication/authentication_bloc.dart';
import 'package:worldon/application/authentication/log_in_form/log_in_form_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/authentication/widgets/log_in_form/log_in_form.dart';
import 'package:worldon/views/core/routes/router.gr.dart';

class LogInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          body: BlocProvider(
            create: (context) => getIt<LogInFormBloc>(),
            child: BlocConsumer<LogInFormBloc, LogInFormState>(
              listenWhen: (previous, current) =>
                  previous.failureOrSuccessOption !=
                      current.failureOrSuccessOption ||
                  current.thirdPartyUserOption.isSome(),
              listener: (context, state) => state.thirdPartyUserOption.fold(
                () => state.failureOrSuccessOption.fold(
                  () {},
                  (either) => either.fold(
                    (failure) => _onFailure(failure, context),
                    (_) => _onSuccess(context),
                  ),
                ),
                (_thirdPartyUser) => context.router.push(
                  RegistrationPageRoute(userOption: some(_thirdPartyUser)),
                ),
              ),
              buildWhen: (previous, current) =>
                  previous.showErrorMessages != current.showErrorMessages,
              builder: (context, state) => LogInForm(),
            ),
          ),
        ),
      );

  Future _onFailure(Failure failure, BuildContext context) =>
      FlushbarHelper.createError(
        duration: const Duration(seconds: 2),
        message: failure.maybeMap(
          authenticationDomain: (failure) =>
              failure.authenticationDomainFailure.map(
            cancelledByUser: (_) => S.of(context).cancelledByUser,
          ),
          authenticationData: (failure) =>
              failure.authenticationDataFailure.map(
            invalidCredentials: (_) => S.of(context).invalidCredentials,
            unregisteredUser: (_) => S.of(context).unregisteredUser,
          ),
          coreData: (failure) => failure.coreDataFailure.maybeMap(
            serverError: (failure) => failure.errorString,
            orElse: () => S.of(context).unknownError,
          ),
          coreApplication: (failure) => failure.coreApplicationFailure.maybeMap(
            emptyFields: (_) => S.of(context).emptyFields,
            orElse: () => S.of(context).unknownError,
          ),
          orElse: () => S.of(context).unknownError,
        ),
      ).show(context);

  void _onSuccess(BuildContext context) {
    context.router.replace(
      MainPageRoute(
        isNewUser: false,
      ),
    );
    context.read<AuthenticationBloc>().add(
          const AuthenticationEvent.authenticationCheckRequested(),
        );
  }
}
