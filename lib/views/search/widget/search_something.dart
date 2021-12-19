import 'package:flutter/material.dart';
import 'package:worldon/generated/l10n.dart';

class SearchSomething extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Center(
        child: Text(
          S.of(context).noSearchesMessage,
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
      );
}
