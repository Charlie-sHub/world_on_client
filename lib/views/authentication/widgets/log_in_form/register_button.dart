import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/routes/router.gr.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () => context.navigator.push(Routes.registrationPage),
      color: WorldOnColors.background,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
        side: const BorderSide(color: WorldOnColors.primary),
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
