import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/forgotten_password_form/forgotten_password_form_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/authentication/widgets/email_text_field.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class ForgottenPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: Text(
              S.of(context).forgottenPassword,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          body: Center(
            child: BlocProvider(
              create: (context) => getIt<ForgottenPasswordFormBloc>(),
              child: BlocConsumer<ForgottenPasswordFormBloc,
                  ForgottenPasswordFormState>(
                listenWhen: (previous, current) =>
                    previous.failureOrSuccessOption !=
                    current.failureOrSuccessOption,
                listener: (context, state) => state.failureOrSuccessOption.fold(
                  () {},
                  (either) => either.fold(
                    (failure) => _onFailure(failure, context),
                    (_) => _onSuccess(context),
                  ),
                ),
                builder: (context, state) => Form(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        const SizedBox(height: 100),
                        EmailTextField(
                          validator: (_) => _emailValidator(context),
                          eventToAdd: (String value) => context
                              .read<ForgottenPasswordFormBloc>()
                              .add(
                                ForgottenPasswordFormEvent.emailChanged(value),
                              ),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            FocusScope.of(context).unfocus();
                            context.read<ForgottenPasswordFormBloc>().add(
                                  const ForgottenPasswordFormEvent
                                      .sentRequest(),
                                );
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              WorldOnColors.primary,
                            ),
                          ),
                          child: Text(
                            S.of(context).resetPassword,
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );

  Future _onFailure(Failure failure, BuildContext context) =>
      FlushbarHelper.createError(
        duration: const Duration(seconds: 2),
        message: failure.maybeMap(
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
    FlushbarHelper.createSuccess(
      duration: const Duration(seconds: 5),
      message: S.of(context).emailRequestSent,
    ).show(context).then(
          (_) => context.router.pop(),
        );
  }

  String _emailValidator(BuildContext context) =>
      context.read<ForgottenPasswordFormBloc>().state.email.value.fold(
            (failure) => failure.maybeMap(
              invalidEmail: (_) => S.of(context).invalidEmail,
              orElse: () => S.of(context).unknownError,
            ),
            (_) => "",
          );
}
