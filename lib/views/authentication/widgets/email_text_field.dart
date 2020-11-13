import 'package:flutter/material.dart';
import 'package:worldon/views/authentication/validator_typedef.dart';

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
      decoration: const InputDecoration(
        labelText: "Email Address",
        prefixIcon: Icon(Icons.email),
      ),
    );
  }
}
