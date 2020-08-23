import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/authentication/authentication_bloc.dart';
import 'package:worldon/application/authentication/log_in_form/log_in_form_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/authentication/widgets/log_in_form/log_in_form.dart';
import 'package:worldon/views/core/misc/string_constants.dart';
import 'package:worldon/views/core/routes/router.gr.dart';

class LogInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<LogInFormBloc>(),
        child: BlocConsumer<LogInFormBloc, LogInFormState>(
          listenWhen: (previous, current) => previous.failureOrSuccessOption != current.failureOrSuccessOption,
          listener: (context, state) => state.failureOrSuccessOption.fold(
            () => null,
            (either) => either.fold(
              (failure) => _onFailure(failure, context),
              (_) => _onSuccess(context),
            ),
          ),
          buildWhen: (previous, current) => previous.showErrorMessages != current.showErrorMessages,
          builder: (context, state) => LogInForm(),
        ),
      ),
    );
  }

  Future _onFailure(Failure failure, BuildContext context) {
    return FlushbarHelper.createError(
      duration: const Duration(seconds: 2),
      message: failure.maybeMap(
        authenticationDomain: (failure) => failure.authenticationDomainFailure.map(
          cancelledByUser: (_) => "Cancelled",
        ),
        authenticationData: (failure) => failure.authenticationDataFailure.map(
          invalidCredentials: (_) => "Invalid Credentials",
        ),
        coreData: (failure) => failure.coreDataFailure.maybeMap(
          serverError: (failure) => failure.errorString,
          orElse: () => StringConst.unknownError,
        ),
        orElse: () => StringConst.unknownError,
      ),
    ).show(context);
  }

  void _onSuccess(BuildContext context) {
    context.navigator.replace(Routes.mainPage);
    context.bloc<AuthenticationBloc>().add(const AuthenticationEvent.authenticationCheckRequested());
  }
}
