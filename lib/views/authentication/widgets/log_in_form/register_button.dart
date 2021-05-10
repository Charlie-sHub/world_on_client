import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/routes/router.gr.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => context.router.push(
        RegistrationPageRoute(userOption: none()),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          WorldOnColors.primary,
        ),
      ),
      child: Text(
        S.of(context).register,
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
