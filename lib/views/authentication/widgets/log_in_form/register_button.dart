import 'package:auto_route/auto_route.dart';
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
        const RegistrationPageRoute(),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          WorldOnColors.background,
        ),
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            side: BorderSide(color: WorldOnColors.primary),
          ),
        ),
      ),
      child: Text(
        S.of(context).register,
        style: const TextStyle(
          color: WorldOnColors.primary,
          fontSize: 20,
        ),
      ),
    );
  }
}
