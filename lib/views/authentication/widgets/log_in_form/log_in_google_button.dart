import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:worldon/application/authentication/log_in_form/log_in_form_bloc.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class LogInGoogleButton extends StatelessWidget {
  const LogInGoogleButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        MdiIcons.google,
        size: 50,
        color: WorldOnColors.blue,
      ),
      onPressed: () => context.read<LogInFormBloc>().add(
            const LogInFormEvent.loggedInGoogle(),
          ),
    );
  }
}
