import 'package:flutter/material.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/views/authentication/validator_typedef.dart';

class UsernameTextField extends StatelessWidget {
  final Function eventToAdd;
  final Validator<String> validator;

  const UsernameTextField({
    Key key,
    @required this.eventToAdd,
    @required this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: Name.maxLength,
      decoration: const InputDecoration(
        labelText: "Username",
        prefixIcon: Icon(Icons.account_box),
      ),
      autocorrect: false,
      onChanged: (value) => eventToAdd(value),
      validator: (_) => validator(_),
    );
  }
}
