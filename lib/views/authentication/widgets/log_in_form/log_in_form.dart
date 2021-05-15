import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:worldon/application/authentication/log_in_form/log_in_form_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/authentication/widgets/log_in_form/log_in_button.dart';
import 'package:worldon/views/authentication/widgets/log_in_form/log_in_google_button.dart';
import 'package:worldon/views/authentication/widgets/log_in_form/register_button.dart';
import 'package:worldon/views/authentication/widgets/password_text_field.dart';
import 'package:worldon/views/authentication/widgets/world_on_title.dart';

import '../email_text_field.dart';
import 'log_in_trouble_button.dart';

class LogInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xff673ab7),
        backgroundBlendMode: BlendMode.srcOver,
      ),
      child: PlasmaRenderer(
        particles: 15,
        color: const Color(0x44f9188b),
        blur: 0.65,
        size: 0.67,
        speed: 3.33,
        blendMode: BlendMode.plus,
        particleType: ParticleType.atlas,
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 30,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const WorldOnTitle(),
                  const SizedBox(height: 30),
                  Form(
                    autovalidateMode: context.read<LogInFormBloc>().state.showErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        EmailTextField(
                          validator: (_) => _emailValidator(context),
                          eventToAdd: (String value) => context.read<LogInFormBloc>().add(
                                LogInFormEvent.emailChanged(value),
                              ),
                        ),
                        const SizedBox(height: 5),
                        PasswordTextField(
                          eventToAdd: (String value) => context.read<LogInFormBloc>().add(
                                LogInFormEvent.passwordChanged(value),
                              ),
                          validator: (_) => _passwordValidator(context),
                        ),
                        const SizedBox(height: 10),
                        const LogInButton(),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  const RegisterButton(),
                  const SizedBox(height: 20),
                  const LogInGoogleButton(),
                  const SizedBox(height: 80),
                  const LogInTroubleButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  String _passwordValidator(BuildContext context) {
    return context.read<LogInFormBloc>().state.password.value.fold(
          (failure) => failure.maybeMap(
            emptyString: (_) => S.of(context).passwordEmptyString,
            multiLineString: (_) => S.of(context).passwordMultiLineString,
            stringExceedsLength: (_) => S.of(context).passwordStringExceedsLength,
            // Rather superfluous
            invalidPassword: (_) => S.of(context).invalidPassword,
            orElse: () => S.of(context).unknownError,
          ),
          (_) => "",
        );
  }

  String _emailValidator(BuildContext context) {
    return context.read<LogInFormBloc>().state.email.value.fold(
          (failure) => failure.maybeMap(
            invalidEmail: (_) => S.of(context).invalidEmail,
            orElse: () => S.of(context).unknownError,
          ),
          (_) => "",
        );
  }
}
