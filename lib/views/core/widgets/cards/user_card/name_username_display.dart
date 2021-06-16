import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';

class NameUsernameDisplay extends StatelessWidget {
  const NameUsernameDisplay({
    Key? key,
    required this.name,
    required this.username,
  }) : super(key: key);

  final Name name;
  final Name username;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AutoSizeText(
            name.getOrCrash(),
            overflow: TextOverflow.fade,
            softWrap: true,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          AutoSizeText(
            "@${username.getOrCrash()}",
            overflow: TextOverflow.fade,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
