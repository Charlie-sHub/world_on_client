import 'package:flutter/material.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';
import 'package:worldon/views/authentication/validator_typedef.dart';

class PasswordTextField extends StatelessWidget {
  final Function eventToAdd;
  final Validator<String> validator;

  const PasswordTextField({
    Key key,
    @required this.eventToAdd,
    @required this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: Password.maxLength,
      decoration: const InputDecoration(
        labelText: "Password",
        counterText: "",
        prefixIcon: Icon(Icons.lock),
      ),
      autocorrect: false,
      obscureText: true,
      onChanged: (value) => eventToAdd(value.trim()),
      validator: (_) => validator(_),
    );
  }
}
