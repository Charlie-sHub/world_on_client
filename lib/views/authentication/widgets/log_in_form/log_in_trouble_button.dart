import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/routes/router.gr.dart';

class LogInTroubleButton extends StatelessWidget {
  const LogInTroubleButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => context.router.push(
        const ForgottenPasswordPageRoute(),
      ),
      child: Text(
        S.of(context).forgottenPassword,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
    );
  }
}
