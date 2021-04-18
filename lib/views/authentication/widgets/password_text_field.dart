import 'package:flutter/material.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/authentication/validator_typedef.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class PasswordTextField extends StatelessWidget {
  final Function eventToAdd;
  final Validator<String> validator;

  const PasswordTextField({
    Key? key,
    required this.eventToAdd,
    required this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: Password.maxLength,
      decoration: InputDecoration(
        labelText: S.of(context).password,
        counterText: "",
        prefixIcon: const Icon(
          Icons.lock,
          color: WorldOnColors.primary,
        ),
      ),
      autocorrect: false,
      obscureText: true,
      onChanged: (value) => eventToAdd(value.trim()),
      validator: (_) => validator(_!),
    );
  }
}
