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
        color: Colors.black,
        backgroundBlendMode: BlendMode.darken,
      ),
      child: PlasmaRenderer(
        type: PlasmaType.bubbles,
        particles: 28,
        color: const Color(0x81172F77),
        speed: 1.5,
        blur: 0.79,
        size: 0.67,
        blendMode: BlendMode.plus,
        particleType: ParticleType.atlas,
        variation1: 0.22,
        variation2: 0.1,
        variation3: 0.1,
        child: PlasmaRenderer(
          color: const Color(0x2fff002c),
          speed: 0.7,
          blendMode: BlendMode.plus,
          particleType: ParticleType.atlas,
          variation1: 0.34,
          variation2: 0.37,
          variation3: 0.22,
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
                    Column(
                      children: const [
                        SizedBox(height: 40),
                        LogInGoogleButton(),
                        SizedBox(height: 60),
                        LogInTroubleButton(),
                      ],
                    ),
                  ],
                ),
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
