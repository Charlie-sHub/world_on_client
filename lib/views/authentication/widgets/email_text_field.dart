import 'package:flutter/material.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/authentication/validator_typedef.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class EmailTextField extends StatelessWidget {
  final Function(String value) eventToAdd;
  final Validator<String?> validator;
  final String? initialValue;

  const EmailTextField({
    Key? key,
    required this.eventToAdd,
    required this.validator,
    this.initialValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => TextFormField(
        onChanged: (value) => eventToAdd(value.trim()),
        initialValue: initialValue,
        validator: (_) => validator(_),
        autocorrect: false,
        decoration: InputDecoration(
          labelText: S.of(context).emailAddress,
          prefixIcon: const Icon(
            Icons.email,
            color: WorldOnColors.primary,
          ),
          filled: true,
          fillColor: WorldOnColors.background,
        ),
      );
}
