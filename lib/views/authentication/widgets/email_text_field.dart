import 'package:flutter/material.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/authentication/validator_typedef.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class EmailTextField extends StatelessWidget {
  final Function eventToAdd;
  final Validator<String> validator;

  const EmailTextField({
    Key key,
    @required this.eventToAdd,
    @required this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) => eventToAdd(value.trim()),
      validator: (_) => validator(_),
      autocorrect: false,
      decoration: InputDecoration(
        labelText: S.of(context).emailAddress,
        prefixIcon: const Icon(
          Icons.email,
          color: WorldOnColors.primary,
        ),
      ),
    );
  }
}
